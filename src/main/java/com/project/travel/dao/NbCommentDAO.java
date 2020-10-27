package com.project.travel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.NbCommentVO;

@Repository
public class NbCommentDAO {
	
	@Autowired
	public SqlSession sqlSession;
		
    // 댓글 목록
    public List<NbCommentVO> nBCommentList(int nb_Num){
    	return sqlSession.selectList("nBCommentList", nb_Num);
    }
      
    // 댓글 작성
	public int nBCommentWrite(NbCommentVO nbCvo) {
		return sqlSession.insert("nBCommentInsert", nbCvo);
	}
	
	// 댓글 수정
	public int nBCommentUpdate(NbCommentVO nbCvo) {
		return sqlSession.update("nBCommentUpdate", nbCvo);
	}
	
	// 댓글 삭제
	public int nBCommentDelete(int nb_C_Num) {
		return sqlSession.delete("nBCommentDelete", nb_C_Num);
	}
}
