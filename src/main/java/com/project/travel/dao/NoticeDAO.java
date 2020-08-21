package com.project.travel.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.NoticeVO;
import com.project.travel.vo.QnAVO;

@Repository
public class NoticeDAO {

	@Autowired
	public SqlSession sqlSession;

	/* Notice 리스트 */
	public List<NoticeVO> getNoticeList() {
		return sqlSession.selectList("getNoticeList");
	}

	/* Notice 작성 */
	public int NoticeWrite(NoticeVO noticevo) {
		return sqlSession.insert("NoticeWrite", noticevo);
	}

	/* Notice 내용 뷰 */
	public NoticeVO getNoticeView(int NB_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("NB_Num", NB_Num);
		return sqlSession.selectOne("getNoticeView", map);
	}

	/* Notice 조회수 업데이트 */
	public void NoticeviewUpdate(int NB_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("NB_Num", NB_Num);
		sqlSession.update("NoticeviewUpdate", map);
	}

	/* Notice 수정 */
	public int NoticeUpdate(NoticeVO noticevo) {
		return sqlSession.update("NoticeUpdate", noticevo);
	}

	/* Notice 삭제 */
	public int NoticeDelete(int NB_Num) {
		return sqlSession.delete("NoticeDelete", NB_Num);
	}
}
