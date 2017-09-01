package com.qingshixun.project.chart.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class ChartDao extends BaseDao{
	
	public List<Map<String,Object>> querySchoolList(){
		String sql = "select name,number,color from school";
		return this.getJdbcTemplate().queryForList(sql);
	}
}
