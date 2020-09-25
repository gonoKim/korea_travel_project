package com.project.travel.utility;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.travel.vo.FestivalVO;

@Component("fileUtils")
public class FileUtils {
	
	//String imgUploadPath = imagePath + File.separator + "imgUpload" + File.separator + "photoImg";
	//private static final String filePath = "C:\\Users\\KangHC\\git\\korea_travel_project\\src\\main\\webapp\\resources\\imgUpload\\"; // 파일이 저장될 위치
	
	public List<Map<String, Object>> parseInsertFileInfo(FestivalVO festivalVO, 
			MultipartHttpServletRequest mpRequest) throws Exception{
		
		String realPath = mpRequest.getServletContext().getRealPath("resources") ; // path
		String filePath = realPath+ File.separator + "imgUpload" + File.separator + "festivalImg" + File.separator; // 파일이 저장될 위치
		
		Iterator<String> iterator = mpRequest.getFileNames();
		
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null;
		
		int f_Num = festivalVO.getF_Num();
		
		File file = new File(filePath);
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		while(iterator.hasNext()) {
			multipartFile = mpRequest.getFile(iterator.next());
			if(multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName = getRandomString() + originalFileExtension;
				
				file = new File(filePath + storedFileName);
				multipartFile.transferTo(file);
				listMap = new HashMap<String, Object>();
				listMap.put("F_Num", f_Num);
				listMap.put("ORG_FILE_NAME", originalFileName);
				listMap.put("STORED_FILE_NAME", storedFileName);
				listMap.put("FILE_SIZE", multipartFile.getSize());
				list.add(listMap);
			}
		}
		return list;
	}
	
	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}