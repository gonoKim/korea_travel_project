package com.project.travel.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.travel.common.festivalSearch;
import com.project.travel.vo.FestivalImgVO;
import com.project.travel.vo.FestivalVO;

@Repository
public class FestivalDAO {

	@Autowired
	public SqlSession sqlSession;

	/* Festival 리스트 & 페이징 */
	public List<FestivalVO> festivalList(festivalSearch fSearch) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		/* 처음 페이지 리스트 */
		map.put("festivalstartList", fSearch.getfestivalstartList());
		map.put("searchType", fSearch.getSearchType());
		map.put("keyword", fSearch.getKeyword());
		return sqlSession.selectList("festivalList", map);
	}

	/* Festival 게시물 갯수 */
	public int getFestivalListCnt(festivalSearch fSearch) {
		return sqlSession.selectOne("getFestivalListCnt", fSearch);
	}

	/* Festival 쓰기 */
	public void write(FestivalVO festivalvo) {
		sqlSession.insert("festivalwrite", festivalvo);
	}

	/* Festival 업로드 */
	public void insertFile(Map<String, Object> map) throws Exception {
		sqlSession.insert("insertFile", map);
	}

	/* Festival 뷰 */
	public FestivalVO festivalView(int f_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("f_Num", f_Num);
		return sqlSession.selectOne("festivalView", map);
	}

	/* Festival 삭제 */
	public int festivalDelete(FestivalVO festivalvo) {
		return sqlSession.delete("festivalDelete", festivalvo);
	}

	/* Festival 업데이트 */
	public int festivalUpdate(FestivalVO festivalvo) {
		return sqlSession.update("festivalUpdate", festivalvo);
	}
	
	/* 축제 이미지 가져오기( 장소코드로) */
	public List<FestivalImgVO> festivalImg(int place_Code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("place_Code", place_Code);
		return sqlSession.selectList("festivalImg", map);
	}

	/* 축제 데이터 값 가져오기  장소코드*/
	public List<FestivalVO> festivalPage(int place_Code) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("place_Code", place_Code);
		return sqlSession.selectList("festivalPage", map);
	}
	
	/* 축제 데이터 값 가져오기 (자세히 보기 페이지) 축제 넘버 */ 
	public FestivalVO fPageView(int f_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
	map.put("f_Num", f_Num);
	return sqlSession.selectOne("fViewPage", map);
	}
	
	/* 축제 이미지 가져오기 (자세히 보기 페이지) 축제 넘버 */ 
	public FestivalImgVO fPageImgView(int f_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("f_Num", f_Num);
		return sqlSession.selectOne("fViewImg", map);
	}
}
