package com.project.travel.common;

public class PaginationNotice {

	private int noticelistSize = 10; // 한 페이지당 보여질 리스트의 개수 
	// 초기값으로 목록개수를 10으로 셋팅
	private int noticerangeSize = 5; // 한 페이지 범위에 보여질 페이지의 개수
	// 초기값으로 페이지범위를 10으로 셋팅
	private int noticepage;			//현재 목록의 페이지 번호 
	private int noticerange;		//각 페이지 범위 시작 번호 
	private int noticelistCnt;		//전체 개시물의 개수 
	private int noticepageCnt;		// 전체 페이지 범위의 개수 
	private int noticestartPage;	//각 페이지 범위 시작 번호 
	private int noticestartList;	//각 페이지 범위 
	private int noticeendPage;		//각 페이지 범위 끝 번호
	private boolean noticeprev;		//이전 페이지 여부 
	private boolean noticenext;		//다음 페이지 여부 
	
	public int getNoticelistSize() {
		return noticelistSize;
	}

	public void setNoticelistSize(int noticelistSize) {
		this.noticelistSize = noticelistSize;
	}

	public int getNoticerangeSize() {
		return noticerangeSize;
	}

	public void setNoticerangeSize(int noticerangeSize) {
		this.noticerangeSize = noticerangeSize;
	}

	public int getNoticepage() {
		return noticepage;
	}

	public void setNoticepage(int noticepage) {
		this.noticepage = noticepage;
	}

	public int getNoticerange() {
		return noticerange;
	}

	public void setNoticerange(int noticerange) {
		this.noticerange = noticerange;
	}

	public int getNoticelistCnt() {
		return noticelistCnt;
	}

	public void setNoticelistCnt(int noticelistCnt) {
		this.noticelistCnt = noticelistCnt;
	}

	public int getNoticepageCnt() {
		return noticepageCnt;
	}

	public void setNoticepageCnt(int noticepageCnt) {
		this.noticepageCnt = noticepageCnt;
	}

	public int getNoticestartPage() {
		return noticestartPage;
	}

	public void setNoticestartPage(int noticestartPage) {
		this.noticestartPage = noticestartPage;
	}

	public int getNoticestartList() {
		return noticestartList;
	}

	public void setNoticestartList(int noticestartList) {
		this.noticestartList = noticestartList;
	}

	public int getNoticeendPage() {
		return noticeendPage;
	}

	public void setNoticeendPage(int noticeendPage) {
		this.noticeendPage = noticeendPage;
	}

	public boolean isNoticeprev() {
		return noticeprev;
	}

	public void setNoticeprev(boolean noticeprev) {
		this.noticeprev = noticeprev;
	}

	public boolean isNoticenext() {
		return noticenext;
	}

	public void setNoticenext(boolean noticenext) {
		this.noticenext = noticenext;
	}

	public void pageInfo(int noticepage, int noticerange, int noticelistCnt) {
		this.noticepage = noticepage;
		this.noticerange = noticerange;
		this.noticelistCnt = noticelistCnt;

		//전체 페이지수 
		this.noticepageCnt = (int) Math.ceil((double)noticelistCnt / noticelistSize);

		// 시작 페이지
		this.noticestartPage = (noticerange - 1) * noticerangeSize + 1;

		//끝 페이지
		this.noticeendPage = noticerange * noticerangeSize;

		// 게시판 시작번호
		this.noticestartList = (noticepage - 1) * noticelistSize;
		
		//이전 버튼 상태
		this.noticeprev = noticerange == 1 ? false : true;

		//다음 버튼 상태
		this.noticenext = noticepageCnt > noticeendPage ? true : false;
		if (this.noticeendPage > this.noticepageCnt) {
			this.noticeendPage = this.noticepageCnt;
			this.noticenext = false;
		}
	}
}