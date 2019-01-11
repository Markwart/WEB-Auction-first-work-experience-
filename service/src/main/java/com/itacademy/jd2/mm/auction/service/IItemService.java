package com.itacademy.jd2.mm.auction.service;

import java.util.List;

import javax.transaction.Transactional;

import com.itacademy.jd2.mm.auction.daoapi.entity.table.IItem;
import com.itacademy.jd2.mm.auction.daoapi.filter.ItemFilter;

public interface IItemService {
	
	IItem get(Integer id);

	List<IItem> getAll();

	@Transactional
	void save(IItem entity);

	@Transactional
	void delete(Integer id);

	@Transactional
	void deleteAll();

	IItem createEntity();
	
	@Transactional
	List<IItem> find(ItemFilter filter, Integer id);

    long getCount(ItemFilter filter);

	IItem getFullInfo(Integer id);

	@Transactional
	List<IItem> search(String text);

}
