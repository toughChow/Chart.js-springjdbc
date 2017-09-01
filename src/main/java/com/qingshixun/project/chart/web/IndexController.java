package com.qingshixun.project.chart.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/index")
public class IndexController extends BaseController{
	
	/**
	 * 进入首页
	 * @param model
	 * @return
	 */
	public String index(Model model){
		return "index";
	}

}
