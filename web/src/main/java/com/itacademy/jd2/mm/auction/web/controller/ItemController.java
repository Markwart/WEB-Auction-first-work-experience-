package com.itacademy.jd2.mm.auction.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.itacademy.jd2.mm.auction.daoapi.entity.enums.StatusAuction;
import com.itacademy.jd2.mm.auction.daoapi.entity.table.IAuctionDuration;
import com.itacademy.jd2.mm.auction.daoapi.entity.table.ICategory;
import com.itacademy.jd2.mm.auction.daoapi.entity.table.IComposition;
import com.itacademy.jd2.mm.auction.daoapi.entity.table.ICondition;
import com.itacademy.jd2.mm.auction.daoapi.entity.table.ICountryOrigin;
import com.itacademy.jd2.mm.auction.daoapi.entity.table.IItem;
import com.itacademy.jd2.mm.auction.daoapi.entity.table.IUserAccount;
import com.itacademy.jd2.mm.auction.daoapi.filter.ItemFilter;
import com.itacademy.jd2.mm.auction.service.IAuctionDurationService;
import com.itacademy.jd2.mm.auction.service.ICategoryService;
import com.itacademy.jd2.mm.auction.service.ICompositionService;
import com.itacademy.jd2.mm.auction.service.IConditionService;
import com.itacademy.jd2.mm.auction.service.ICountryOriginService;
import com.itacademy.jd2.mm.auction.service.IItemService;
import com.itacademy.jd2.mm.auction.service.IUserAccountService;
import com.itacademy.jd2.mm.auction.web.converter.ItemFromDTOConverter;
import com.itacademy.jd2.mm.auction.web.converter.ItemToDTOConverter;
import com.itacademy.jd2.mm.auction.web.dto.ItemDTO;
import com.itacademy.jd2.mm.auction.web.dto.grid.GridStateDTO;
import com.itacademy.jd2.mm.auction.web.dto.search.ItemSearchDTO;
import com.itacademy.jd2.mm.auction.web.security.AuthHelper;

@Controller
@RequestMapping(value = "/item")
public class ItemController extends AbstractController {
	
	//public static final String FILE_FOLDER = "d:\\M_Matusevich\\G-JD2-10-17_mmatusevich\\doc\\"; 
	private static final String SEARCH_FORM_MODEL = "searchFormModel";
	private static final String SEARCH_DTO = ItemController.class.getSimpleName() + "_SEACH_DTO";

	private IItemService itemService;
	private IUserAccountService userAccountService;
	private ICategoryService categoryService;
	private IConditionService conditionService;
	private ICompositionService compositionService;
	private ICountryOriginService countryOriginService;
	private IAuctionDurationService auctionDurationService;

	private ItemToDTOConverter toDtoConverter;
	private ItemFromDTOConverter fromDtoConverter;

	@Autowired
	public ItemController(IItemService itemService, IUserAccountService userAccountService,
			ICategoryService categoryService, IConditionService conditionService,
			ICompositionService compositionService, ICountryOriginService countryOriginService,
			ItemToDTOConverter toDtoConverter, ItemFromDTOConverter fromDtoConverter,
			IAuctionDurationService auctionDurationService) {
		super();
		this.itemService = itemService;
		this.userAccountService = userAccountService;
		this.categoryService = categoryService;
		this.conditionService = conditionService;
		this.compositionService = compositionService;
		this.countryOriginService = countryOriginService;
		this.auctionDurationService = auctionDurationService;
		this.toDtoConverter = toDtoConverter;
		this.fromDtoConverter = fromDtoConverter;
		;
	}

	@RequestMapping(value = { "", "/private" }, method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView index(final HttpServletRequest req, @ModelAttribute(SEARCH_FORM_MODEL) ItemSearchDTO searchDTO,
			@RequestParam(name = "page", required = false) final Integer pageNumber,
			@RequestParam(name = "sort", required = false) final String sortColumn) {

		Integer loggedUserId = AuthHelper.getLoggedUserId();
		boolean isPrivate = req.getRequestURI().contains("/private");

		final GridStateDTO gridState = getListDTO(req);
		gridState.setPage(pageNumber);
		gridState.setSort(sortColumn, "id");

		if (req.getMethod().equalsIgnoreCase("get")) {
			searchDTO = getSearchDTO(req);
		} else {
			req.getSession().setAttribute(SEARCH_DTO, searchDTO);
		}

		final ItemFilter filter = new ItemFilter();

		prepareFilter(gridState, filter);
		gridState.setTotalCount(itemService.getCount(filter));

		filter.setFetchUserAccount(true);
		filter.setFetchCategory(true);
		filter.setFetchCondition(true);
		filter.setFetchComposition(true);
		filter.setFetchCountryOrigin(true);
		filter.setFetchAuctionDuration(true);

		if (!isPrivate) { // get private list
			filter.setLoggedUserId(loggedUserId = null);
		} else {
			filter.setLoggedUserId(loggedUserId);
		}
		
		List<IItem> entities;
		if (searchDTO.getName() != null) {
			filter.setName(searchDTO.getName());
			entities = itemService.findInIndex(filter.getName());
		} else {
			entities = itemService.find(filter);
		}
		List<ItemDTO> dtos = entities.stream().map(toDtoConverter).collect(Collectors.toList());

		final Map<String, Object> models = new HashMap<>();
		models.put("gridItems", dtos);
		models.put(SEARCH_FORM_MODEL, searchDTO);
		models.put("showAddButton", isPrivate);
		return new ModelAndView("item.list", models);
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView showForm() {
		final Map<String, Object> hashMap = new HashMap<>();
		hashMap.put("formModel", new ItemDTO());
		loadCommonFormModels(hashMap);
		return new ModelAndView("item.edit", hashMap);
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Object save(@Valid @ModelAttribute("formModel") final ItemDTO formModel,@RequestParam("file") final MultipartFile file, final BindingResult result) throws IOException {
		
		String originalFilename = file.getOriginalFilename(); // to DB
		String contentType = file.getContentType();// to DB
		String uuid = UUID.randomUUID().toString(); // to DB

		//System.out.printf("Uploaded file %s", file.getOriginalFilename());

		//InputStream inputStream = file.getInputStream();
		//Files.copy(inputStream, new File(FILE_FOLDER + uuid).toPath(), StandardCopyOption.REPLACE_EXISTING);
		
		
		Integer loggedUserId = AuthHelper.getLoggedUserId();
		
		if (result.hasErrors()) {
			final Map<String, Object> hashMap = new HashMap<>();
			hashMap.put("formModel", formModel);
			loadCommonFormModels(hashMap);
			return new ModelAndView("item.edit", hashMap);
		} else {
			final IItem entity = fromDtoConverter.apply(formModel);
			entity.setImage(uuid);
			itemService.save(entity, loggedUserId/*, uuid, file*/);
			return "redirect:/item";
		}
	}

	@RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
	public String delete(@PathVariable(name = "id", required = true) final Integer id) {
		itemService.delete(id);
		return "redirect:/item";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView viewDetails(@PathVariable(name = "id", required = true) final Integer id) {
		final IItem dbModel = itemService.getFullInfo(id);
		final ItemDTO dto = toDtoConverter.apply(dbModel);
		final Map<String, Object> hashMap = new HashMap<>();
		hashMap.put("formModel", dto);
		hashMap.put("readonly", true);
		loadCommonFormModels(hashMap);
		return new ModelAndView("item.edit", hashMap);
	}

	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable(name = "id", required = true) final Integer id) {
		final ItemDTO dto = toDtoConverter.apply(itemService.getFullInfo(id));

		final Map<String, Object> hashMap = new HashMap<>();
		hashMap.put("formModel", dto);
		loadCommonFormModels(hashMap);
		return new ModelAndView("item.edit", hashMap);
	}

	private void loadCommonFormModels(final Map<String, Object> hashMap) {
		final List<IUserAccount> userAccountsList = userAccountService.getAll();
		final List<ICategory> categoryList = categoryService.getAll();
		final List<ICondition> conditionList = conditionService.getAll();
		final List<IComposition> compositionList = compositionService.getAll();
		final List<ICountryOrigin> countryOriginList = countryOriginService.getAll();
		final List<StatusAuction> statusAuctionList = Arrays.asList(StatusAuction.values());
		final List<IAuctionDuration> auctionDurationList = auctionDurationService.getAll();

		/*
		 * final Map<Integer, String> userAccountsMap = new HashMap<>(); for (final
		 * IUserAccount iUserAccount : userAccounts) {
		 * userAccountsMap.put(iUserAccount.getId(), iUserAccount.getEmail()); }
		 */

		final Map<Integer, String> userAccountsMap = userAccountsList.stream()
				.collect(Collectors.toMap(IUserAccount::getId, IUserAccount::getEmail));
		hashMap.put("sellerChoices", userAccountsMap);

		final Map<Integer, String> categoryMap = categoryList.stream()
				.collect(Collectors.toMap(ICategory::getId, ICategory::getName));
		hashMap.put("categoryChoices", categoryMap);

		final Map<Integer, String> conditionMap = conditionList.stream()
				.collect(Collectors.toMap(ICondition::getId, ICondition::getName));
		hashMap.put("conditionChoices", conditionMap);

		final Map<Integer, String> compositionMap = compositionList.stream()
				.collect(Collectors.toMap(IComposition::getId, IComposition::getName));
		hashMap.put("compositionChoices", compositionMap);

		final Map<Integer, String> countryOriginMap = countryOriginList.stream()
				.collect(Collectors.toMap(ICountryOrigin::getId, ICountryOrigin::getName));
		hashMap.put("countryOriginChoices", countryOriginMap);

		final Map<String, String> statusAuctionMap = statusAuctionList.stream()
				.collect(Collectors.toMap(StatusAuction::name, StatusAuction::name));
		hashMap.put("statusAuctionChoices", statusAuctionMap);

		final Map<Integer, Integer> auctionDurationMap = auctionDurationList.stream()
				.collect(Collectors.toMap(IAuctionDuration::getId, IAuctionDuration::getDay));
		hashMap.put("auctionDurationChoices", auctionDurationMap);
	}

	private ItemSearchDTO getSearchDTO(final HttpServletRequest req) {
		ItemSearchDTO searchDTO = (ItemSearchDTO) req.getSession().getAttribute(SEARCH_DTO);
		if (searchDTO == null) {
			searchDTO = new ItemSearchDTO();
			req.getSession().setAttribute(SEARCH_DTO, searchDTO);
		}
		return searchDTO;
	}
}
