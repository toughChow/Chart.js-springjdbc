package com.qingshixun.project.chart.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class SchoolDTO implements Serializable, RowMapper<SchoolDTO>{

	private static final long serialVersionUID = 1L;

	@Override
	public SchoolDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		SchoolDTO school = new SchoolDTO();
		school.setName(rs.getString("name"));
		school.setNum(rs.getInt("number"));
		return null;
	}

	private String name;
	
	private int num;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
}
