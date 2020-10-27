package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.PhotoBoardVO;

public interface PhotoBoardService {
	List<PhotoBoardVO> getPhotoList();
	
	void PhotoWrite(PhotoBoardVO photovo);

	PhotoBoardVO getPhotoView(int Photo_Num);
	
	void ViewsUpdate(int Photo_Num);

}
