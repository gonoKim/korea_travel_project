package com.project.travel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.QnACommentVO;

@Repository
public class QnACommentDAO {
	
	@Autowired
	public SqlSession sqlSession;
	
    // 댓글 개수
	public int qnaCommentCount() {
	return sqlSession.selectOne("qnaCommentCount");
	}
    // 댓글 목록
    public List<QnACommentVO> qnaCommentList(){
    	return sqlSession.selectList("qnaCommentList");
    }
  
    // 댓글 작성
	public int qnaCommentWrite(QnACommentVO qnaCvo) {
		return sqlSession.insert("qnaCommentInsert", qnaCvo);
	}
	  // 댓글 수정
	public int qnaCommentUpdate(QnACommentVO qnaCvo) {
		return sqlSession.update("qnaCommentUpdate", qnaCvo);
	}
	  // 댓글 삭제
	public int qnaCommentDelete(int qnaCNum) {
		return sqlSession.delete("qnaCommentDelete", qnaCNum);
	}

}
