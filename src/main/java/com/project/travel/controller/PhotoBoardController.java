package com.project.travel.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.project.travel.service.PhotoBoardService;
import com.project.travel.vo.PhotoBoardVO;

@Controller
@RequestMapping("gallery/*")
public class PhotoBoardController {
	
	/* photo 컨트롤러 */
	@Autowired
	PhotoBoardService photoService;
	
//	photo 리스트 맵핑, 컨트롤러
		@RequestMapping("gallery/PhotoBoard")
		public ModelAndView PhotoBoard() {
			List result = photoService.getPhotoList();
			ModelAndView mav = new ModelAndView();
			mav.addObject("result", result);
			return mav;
		}
		
//		PhotoWrite 컨트롤러
		@RequestMapping(value="gallery/PhotoWrite",method = RequestMethod.GET)
		public ModelAndView photowrite() {
			ModelAndView mav = new ModelAndView();
			return mav; 
		}

//		PhotoView물 보여주는 컨트롤러 & 조회수
		@RequestMapping(value="gallery/PhotoView",method = RequestMethod.GET)
		public ModelAndView PhotoView(int Photo_Num) {			
			photoService.ViewsUpdate(Photo_Num);
			PhotoBoardVO result = photoService.getPhotoView(Photo_Num);
			ModelAndView mav = new ModelAndView();
			mav.addObject("result",result);
			return mav;
		}
		
}