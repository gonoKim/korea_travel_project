package com.project.travel.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.FestivalService;
import com.project.travel.vo.FestivalImgVO;
import com.project.travel.vo.FestivalVO;
import com.project.travel.vo.fSearchVO;

@Controller
@RequestMapping("Festival/*")
public class FestivalController {
	private static final Logger logger = LoggerFactory.getLogger(FestivalController.class);

	@Autowired
	FestivalService festivalService;

	/* 축제 리스트 */
	@RequestMapping("/FestivalBoard")
	public ModelAndView FestivalBoard(
			@RequestParam(required = false, defaultValue = "1") int festivalpage
		,   @RequestParam(required = false, defaultValue = "1") int festivalrange
		, @RequestParam(required = false, defaultValue = "title") String searchType
		, @RequestParam(required = false) String keyword
			) {
		
		fSearchVO fSearchvo = festivalService.festivalList(festivalpage, festivalrange, searchType, keyword);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("fPagination", fSearchvo.getfSearch());
		mav.addObject("fResult", fSearchvo.getfList());
		return mav;
	}

	/* 축제 쓰기 */
	@RequestMapping(value = "/FestivalWrite", method = RequestMethod.GET)
	public void FestivalWrite() {
		logger.info("FestivalWrite");
	}

	/* 축제 쓰기 데이터 가져오기 */	
	@RequestMapping(value = "/FestivalWrite", method = RequestMethod.POST)
	public void write(FestivalVO festivalvo, MultipartHttpServletRequest mpRequest) throws Exception{
		logger.info("write");
		festivalService.write(festivalvo, mpRequest);
	}
	
	/* 축제 뷰 */
	@RequestMapping(value="/FestivalView", method = RequestMethod.GET)
	public ModelAndView FestivalView(int f_Num) {
		FestivalVO fResult = festivalService.festivalView(f_Num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("fResult",fResult);
		return mav;
	}	

	/* 축제 데이터 삭제 */ 
	@ResponseBody
	@RequestMapping(value="/FestivalDelete",method = RequestMethod.GET)
	public void FestivalDelete(
			/* chbox[]를 list형식으로 chArr에 담는다 */
			@RequestParam(value = "chbox[]") List<String> chArr, FestivalVO festivalvo) {
	
		/* String값을 int형으로 변경하여 값을 담는 그릇 */ 
		int f_Num = 0;
		
		for(String i : chArr) {
			f_Num =Integer.parseInt(i);
			festivalvo.setF_Num(f_Num);
			festivalService.festivalDelete(festivalvo);
		}
	}
	
	/* 축제 업데이트 뷰 */
	@RequestMapping(value="/FestivalUpdate",method = RequestMethod.GET)
	public ModelAndView FestivalUpdate(int f_Num) {
		/* festivalView 사용 */
		FestivalVO fResult = festivalService.festivalView(f_Num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("fResult",fResult);
		return mav;
	}

	/* 축제 업데이트 데이터 가져오기 */
	@ResponseBody
	@RequestMapping(value="/FestivalUpdate",method = RequestMethod.POST)
	public int FestivalUpdate(FestivalVO festivalvo) {
		int result = 0; 
		result = festivalService.festivalUpdate(festivalvo); 
		return result;
	}
	
	
	/* 축제 페이지 리스트 장소코드로 분류 */
	@RequestMapping(value = "/FestivalPage", method = RequestMethod.GET)
	public ModelAndView FestivalPage(
			@RequestParam(required = false, defaultValue = "1")int place_Code
				) {		
		fSearchVO fPageSearchvo = festivalService.festivalPage(place_Code);
		
	
			ModelAndView mav = new ModelAndView();

			mav.addObject("fResult",fPageSearchvo.getfList());
			mav.addObject("fIResult",fPageSearchvo.getfImg());
			return mav;
	}
	
	/* 축제 뷰 페이지 리스트 축제 넘버로 분류 */
	 @RequestMapping(value = "/pageView", method = RequestMethod.GET) 
	 public ModelAndView pgaeView(
			 @RequestParam(required = false)
			 int f_Num) {
	 fSearchVO fPageSearchvo = festivalService.fPageView(f_Num);
	 ModelAndView mav = new ModelAndView();
	 
	 mav.addObject("fResult",fPageSearchvo.getfViewList());
	 mav.addObject("fIResult",fPageSearchvo.getfViewImg());
	 
	 return mav; 
	 
	 }
	 
}
