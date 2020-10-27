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
		
    // 댓글 목록
    public List<QnACommentVO> qnaCommentList(int qnA_Num){
    	return sqlSession.selectList("qnaCommentList", qnA_Num);
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
	public int qnaCommentDelete(int qnA_C_Num) {
		return sqlSession.delete("qnaCommentDelete", qnA_C_Num);
	}
}
