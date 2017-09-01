package com.qingshixun.project.chart.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qingshixun.project.chart.dao.ChartDao;

@Service
public class ChartService extends BaseService{
	
	@Autowired
	private ChartDao chartDao;
	
	public List<Map<String,Object>> querySchoolList(){
		return chartDao.querySchoolList();
	}

}
