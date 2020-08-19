package com.project.travel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("main/*")
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	// 메인 get
	@RequestMapping(value="/main/main", method = RequestMethod.GET)
	public void getMain() throws Exception {
		logger.info("get main");
	}
}