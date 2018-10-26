package com.itacademy.jd2.mm.auction.jdbc.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.List;

import com.itacademy.jd2.mm.auction.daoapi.IConditionDao;
import com.itacademy.jd2.mm.auction.daoapi.entity.model.ICondition;
import com.itacademy.jd2.mm.auction.jdbc.impl.entity.Condition;
import com.itacademy.jd2.mm.auction.jdbc.impl.util.PreparedStatementAction;
import com.itacademy.jd2.mm.auction.jdbc.impl.util.SQLExecutionException;

public class ConditionDaoImpl extends AbstractDaoImpl<ICondition, Integer> implements IConditionDao {

	@Override
	public ICondition createEntity() {
		return new Condition();
	}

	@Override
	public void insert(final ICondition entity) {
		executeStatement(new PreparedStatementAction<ICondition>(
				String.format("insert into %s (name, created, updated) values(?,?,?)", getTableName()), true) {
			@Override
			public ICondition doWithPreparedStatement(final PreparedStatement pStmt) throws SQLException {
				pStmt.setString(1, entity.getName());
				pStmt.setObject(2, entity.getCreated(), Types.TIMESTAMP);
				pStmt.setObject(3, entity.getUpdated(), Types.TIMESTAMP);

				pStmt.executeUpdate();

				final ResultSet rs = pStmt.getGeneratedKeys();
				rs.next();
				final int id = rs.getInt("id");

				rs.close();

				entity.setId(id);
				return entity;
			}
		});

	}

	@Override
	public void update(final ICondition entity) {
		executeStatement(new PreparedStatementAction<ICondition>(
				String.format("update %s set name=?, updated=? where id=?", getTableName())) {
			@Override
			public ICondition doWithPreparedStatement(final PreparedStatement pStmt) throws SQLException {
				pStmt.setString(1, entity.getName());
				pStmt.setObject(2, entity.getUpdated(), Types.TIMESTAMP);
				pStmt.setInt(3, entity.getId());

				pStmt.executeUpdate();
				return entity;
			}
		});
	}

	@Override
	protected String getTableName() {
		return "brand";
	}

	@Override
	protected ICondition parseRow(final ResultSet resultSet) throws SQLException {
		final ICondition entity = createEntity();
		entity.setId((Integer) resultSet.getObject("id"));
		entity.setName(resultSet.getString("name"));
		entity.setCreated(resultSet.getTimestamp("created"));
		entity.setUpdated(resultSet.getTimestamp("updated"));
		return entity;
	}

}
