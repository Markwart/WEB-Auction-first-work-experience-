package com.itacademy.jd2.mm.auction.jdbc.impl.entity;


import com.itacademy.jd2.mm.auction.daoapi.entity.table.IAdminCommunication;
import com.itacademy.jd2.mm.auction.daoapi.entity.table.IUserAccount;

public class AdminCommunication extends BaseEntity implements IAdminCommunication {

	private String theme;
	private String text;
	private IUserAccount userAccount;

	@Override
	public String getTheme() {
		return theme;
	}

	@Override
	public void setTheme(final String theme) {
		this.theme = theme;
	}

	@Override
	public String getText() {
		return text;
	}

	@Override
	public void setText(final String text) {
		this.text = text;
	}

	@Override
	public IUserAccount getUserAccount() {
		return userAccount;
	}

	@Override
	public void setUserAccount(final IUserAccount useAccount) {
		this.userAccount = useAccount;
	}

}
