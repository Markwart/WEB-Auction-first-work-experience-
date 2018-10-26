package com.itacademy.jd2.mm.auction.service;

import java.util.List;

import com.itacademy.jd2.mm.auction.daoapi.entity.model.ICondition;

public interface IConditionService {

    ICondition get(Integer id);

    List<ICondition> getAll();

    void save(ICondition entity);

    void delete(Integer id);

    void deleteAll();

    ICondition createEntity();

}
