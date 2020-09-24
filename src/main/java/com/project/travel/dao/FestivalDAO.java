package com.project.travel.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.travel.common.festivalSearch;
import com.project.travel.vo.FestivalVO;

@Repository
public class FestivalDAO {

	@Autowired
	public SqlSession sqlSession;

	/* Festival 리스트 & 페이징*/
	public List<FestivalVO> festivalList(festivalSearch fSearch){
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
}
