package com.project.travel.common;

public class Pagination {

	private int qnalistSize = 10; // 한 페이지당 보여질 리스트의 개수 
	//초기값으로 목록개수를 10으로 셋팅
	private int qnarangeSize = 10; // 	한 페이지 범위에 보여질 페이지의 개수
	 //초기값으로 페이지범위를 10으로 셋팅
	private int qnapage;	//현재 목록의 페이지 번호 
	private int qnarange;	//각 페이지 범위 시작 번호 
	private int qnalistCnt;	//전체 개시물의 개수 
	private int qnapageCnt;	// 전체 페이지 범위의 개수 
	private int qnastartPage;	//각 페이지 범위 시작 번호 
	private int qnastartList;	//각 페이지 범위 
	private int qnaendPage;		//각 페이지 범위 끝 번호
	private boolean qnaprev;	//이전 페이지 여부 
	private boolean qnanext;	//다음 페이지 여부 

	public int getQnalistSize() {
		return qnalistSize;
	}

	public void setQnalistSize(int qnalistSize) {
		this.qnalistSize = qnalistSize;
	}

	public int getQnarangeSize() {
		return qnarangeSize;
	}

	public void setQnarangeSize(int qnarangeSize) {
		this.qnarangeSize = qnarangeSize;
	}

	public int getQnapage() {
		return qnapage;
	}

	public void setQnapage(int qnapage) {
		this.qnapage = qnapage;
	}

	public int getQnarange() {
		return qnarange;
	}

	public void setQnarange(int qnarange) {
		this.qnarange = qnarange;
	}

	public int getQnalistCnt() {
		return qnalistCnt;
	}

	public void setQnalistCnt(int qnalistCnt) {
		this.qnalistCnt = qnalistCnt;
	}

	public int getQnapageCnt() {
		return qnapageCnt;
	}

	public void setQnapageCnt(int qnapageCnt) {
		this.qnapageCnt = qnapageCnt;
	}

	public int getQnastartPage() {
		return qnastartPage;
	}

	public void setQnastartPage(int qnastartPage) {
		this.qnastartPage = qnastartPage;
	}

	public int getQnastartList() {
		return qnastartList;
	}

	public void setQnastartList(int qnastartList) {
		this.qnastartList = qnastartList;
	}

	public int getQnaendPage() {
		return qnaendPage;
	}

	public void setQnaendPage(int qnaendPage) {
		this.qnaendPage = qnaendPage;
	}

	public boolean isQnaprev() {
		return qnaprev;
	}

	public void setQnaprev(boolean qnaprev) {
		this.qnaprev = qnaprev;
	}

	public boolean isQnanext() {
		return qnanext;
	}

	public void setQnanext(boolean qnanext) {
		this.qnanext = qnanext;
	}

	public void pageInfo(int qnapage, int qnarange, int qnalistCnt) {

		this.qnapage = qnapage;
		this.qnarange = qnarange;
		this.qnalistCnt = qnalistCnt;

		//전체 페이지수 
		this.qnapageCnt = (int) Math.ceil((double)qnalistCnt / qnalistSize);

		// 시작 페이지
		this.qnastartPage = (qnarange - 1) * qnarangeSize + 1;

		//끝 페이지
		this.qnaendPage = qnarange * qnarangeSize;

		// 게시판 시작번호
		this.qnastartList = (qnapage - 1) * qnalistSize;
		
		//이전 버튼 상태
		this.qnaprev = qnarange == 1 ? false : true;

		//
		
		//다음 버튼 상태
		this.qnanext = qnapageCnt > qnaendPage ? true : false;
		if (this.qnaendPage > this.qnapageCnt) {
			this.qnaendPage = this.qnapageCnt;
			this.qnanext = false;
		}
	}
}
