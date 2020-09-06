package com.project.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.dao.PhotoBoardDAO;
import com.project.travel.vo.PhotoBoardVO;

@Service
public class PhotoBoardImpl implements PhotoBoardService {

	@Autowired
	PhotoBoardDAO photoDAO;

	public List<PhotoBoardVO> getPhotoList() {
		return photoDAO.getPhotoList();
	}

	@Override
	public int PhotoWrite(PhotoBoardVO photovo) {
		return photoDAO.PhotoWrite(photovo);
	}

	@Override
	public PhotoBoardVO getPhotoView(int Photo_Num) {
		
		return photoDAO.getPhotoView(Photo_Num);
	}

	@Override
	public void ViewsUpdate(int Photo_Num) {
		photoDAO.ViewUpdate(Photo_Num);
		
	}



}
