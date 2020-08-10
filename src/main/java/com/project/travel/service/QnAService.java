package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.QnAVO;

public interface QnAService {
	List getQnAList();
	int QnAWrite(QnAVO qnavo);
}
