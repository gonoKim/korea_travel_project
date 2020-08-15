package com.project.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.QnAService;
import com.project.travel.vo.QnAVO;

@Controller
@RequestMapping("mypage/*")
public class MyPageController {
	/* MyPage 컨트롤러 */
	
		@RequestMapping(value="mypage/MyPage",method = RequestMethod.GET)
		public ModelAndView MyPage() {
			ModelAndView mav = new ModelAndView();
			return mav;
		}
}
