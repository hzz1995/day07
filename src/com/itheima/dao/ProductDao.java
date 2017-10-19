package com.itheima.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.itheima.domain.Product;
import com.itheima.utils.JDBCUtils;

public class ProductDao {

	public List<Product> findAll() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "select * from product order by pdate desc";
		List<Product> list = queryRunner.query(sql, new BeanListHandler<Product>(Product.class));
		return list;
	}

}
