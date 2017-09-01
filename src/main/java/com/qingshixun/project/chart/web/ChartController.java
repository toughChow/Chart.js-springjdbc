package com.qingshixun.project.chart.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.qingshixun.project.chart.service.ChartService;

public class ChartController {

	@Autowired
	private ChartService chartService;

	/**
	 * 获取折线图数据
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "line", method = RequestMethod.GET)
	public String line(Model model) {
		List<Map<String, Object>> schoolList = chartService.querySchoolList();

		// 获取横轴数据
		String names = "";
		String values = "";
		List<String> arr = new ArrayList<String>();
		for (Map<String, Object> map : schoolList) {
			arr.add("'"+map.get("name")+"'");
			names += ","+"'"+map.get("name")+"'";
			values += ","+"'"+map.get("number")+"'";
		}
		model.addAttribute("arr",arr);
		model.addAttribute("names","[" + names.substring(1,names.length()) + "]");
		model.addAttribute("values","[" + values.substring(1,values.length()) + "]");
		return "/chart/line";
	}
}
