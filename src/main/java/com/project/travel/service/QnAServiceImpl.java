package com.project.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.dao.QnADAO;
import com.project.travel.vo.QnAVO;

@Service
public class QnAServiceImpl implements QnAService {
	
	@Autowired
	QnADAO qnaDAO;
	
	public List<QnAVO> getQnAList() {
		return qnaDAO.getQnAList();
	}

}
