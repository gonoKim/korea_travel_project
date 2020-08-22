package com.project.travel.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.QnAVO;

@Repository
public class QnADAO {

	@Autowired
	public SqlSession sqlSession;

	/* QnA 리스트 */
	public List<QnAVO> getQnAList() {
		return sqlSession.selectList("getQnAList");
	}
	/* 총 게시글 개수 확인 */
	public int getQnAListCnt() {
	return sqlSession.selectOne("getQnAListCnt");
	}
	
	/* QnA 작성 */
	public int QnAWrite(QnAVO qnavo) {
		return sqlSession.insert("QnAWrite", qnavo);
	}

	/* QnA 내용 뷰 */
	public QnAVO getQnAView(int QnA_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("QnA_Num", QnA_Num);
		return sqlSession.selectOne("getQnAView", map);
	}

	/* QnA 조회수 업데이트 */
	public void viewUpdate(int QnA_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("QnA_Num", QnA_Num);
		sqlSession.update("viewUpdate", map);
	}

	/* QnA 수정 */
	public int QnAUpdate(QnAVO qnavo) {
		return sqlSession.update("QnAUpdate", qnavo);
	}
	
	/* QnA 삭제 */
	public int QnADelete(int QnA_Num) {
		return sqlSession.delete("QnADelete", QnA_Num);
	}
}
