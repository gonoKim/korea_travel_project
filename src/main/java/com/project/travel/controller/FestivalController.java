package com.project.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.FestivalService;
import com.project.travel.vo.FestivalVO;

@Controller
@RequestMapping("Festival/*")
public class FestivalController {

	@Autowired
	FestivalService festivalService;

	/* 축제 리스트 */
	@RequestMapping("/FestivalBoard")
	public ModelAndView FestivalBoard() {
		List fResult = festivalService.festivalList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("fResult", fResult);
		return mav;
	}

	/* 축제 쓰기 */
	@RequestMapping(value = "/FestivalWrite", method = RequestMethod.GET)
	public ModelAndView FestivalWrite() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	/* 축제 쓰기 데이터 가져오기 */
	@ResponseBody
	@RequestMapping(value = "/FestivalWrite", method = RequestMethod.POST)
	public int FestivalWrite(FestivalVO festivalvo) {
		int result = 0;
		result = festivalService.festivalwrite(festivalvo);
		return result;
	}
	
	/* 축제 뷰 */
	@RequestMapping(value="/FestivalView",method = RequestMethod.GET)
	public ModelAndView festivalView(int f_Num) {
		FestivalVO fResult = festivalService.festivalView(f_Num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("fResult",fResult);
		return mav;
	}	

	/* 축제 데이터 삭제 */ 
	@ResponseBody
	@RequestMapping(value="/FestivalDelete",method = RequestMethod.GET)
	public void FestivalDelete(
			@RequestParam(value = "chbox[]") List<String> chArr, FestivalVO festivalvo) {
		int f_Num = 0;
		
		for(String i : chArr) {
			f_Num =Integer.parseInt(i);
			festivalvo.setF_Num(f_Num);
			festivalService.festivalDelete(festivalvo);
		}
	}
}
