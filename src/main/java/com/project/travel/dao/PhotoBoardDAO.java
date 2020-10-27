package com.project.travel.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.PhotoBoardVO;

@Repository
public class PhotoBoardDAO {

	@Autowired
	public SqlSession sqlSession;

	/* PhotoList */
	public List<PhotoBoardVO> getPhotoList() {
		return sqlSession.selectList("getPhotoList");
	}

	/*PhotoWrite*/
	public void PhotoWrite(PhotoBoardVO photovo) {
		sqlSession.insert("photowrite", photovo);
	}
	
	/* PhotoView */
	public PhotoBoardVO getPhotoView(int Photo_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Photo_Num", Photo_Num);
		return sqlSession.selectOne("getPhotoView", map);
	}

	/* PhotoBoard View count */
	public void ViewUpdate(int Photo_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Photo_Num", Photo_Num);
		sqlSession.update("viewUpdate", map);
	}
}
