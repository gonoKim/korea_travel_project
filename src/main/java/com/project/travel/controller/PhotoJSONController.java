package com.project.travel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.travel.service.PhotoBoardService;
import com.project.travel.vo.PhotoBoardVO;

@Controller
@RequestMapping("jquery/*")
public class PhotoJSONController {
	
	@Autowired
	PhotoBoardService photoService;
	
	//PhotoWrite 데이터 받을 컨트롤러
//	@RequestMapping(value="jquery/PhotoWrite",method = RequestMethod.POST)
//	@ResponseBody
//	public int PhotoWrite(PhotoBoardVO photovo) {
//		int result = 0; 
//		result = photoService.PhotoWrite(photovo); 
//		return result;
//	}

}
