package com.project.travel.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.PhotoBoardService;
import com.project.travel.utils.UploadFileUtils;
import com.project.travel.vo.PhotoBoardVO;

@Controller
@RequestMapping("gallery/*")
public class PhotoBoardController {
	
	/* photo 컨트롤러 */
	@Autowired
	PhotoBoardService photoService;
	
	/*
	 * // 200922s
	 * 
	 * @Resource(name="uploadPath") private String uploadPath; // 200922e
	 */	
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
		
		// 200922s
		@RequestMapping(value="gallery/PhotoWrite",method = RequestMethod.POST)
		public String postPhotowrite(PhotoBoardVO vo, MultipartFile file, HttpServletRequest request) throws Exception {
			
			String imagePath = request.getServletContext().getRealPath("resources");
			String imgUploadPath = imagePath + File.separator + "imgUpload" + File.separator + "photoImg";
			String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
			String fileName = null;

			if(file != null) {
			 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
			} else {
			 fileName = imagePath + File.separator + "images" + File.separator + "none.png";
			}

			vo.setPhoto_Img(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
			vo.setPhoto_ThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
			
			photoService.PhotoWrite(vo);
			
			return "redirect:/gallery/PhotoBoard";
		}
		// 200922e

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