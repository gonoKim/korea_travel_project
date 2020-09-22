package com.project.travel.common;

public class festivalPagination {

	private int festivallistSize = 10; // 한 페이지당 보여질 리스트의 개수 
	//초기값으로 목록개수를 10으로 셋팅
	private int festivalrangeSize = 10; // 	한 페이지 범위에 보여질 페이지의 개수
	 //초기값으로 페이지범위를 10으로 셋팅
	private int festivalpage;	//현재 목록의 페이지 번호 
	private int festivalrange;	//각 페이지 범위 시작 번호 
	private int festivallistCnt;	//전체 개시물의 개수 
	private int festivalpageCnt;	// 전체 페이지 범위의 개수 
	private int festivalstartPage;	//각 페이지 범위 시작 번호 
	private int festivalstartList;	//각 페이지 범위 
	private int festivalendPage;		//각 페이지 범위 끝 번호
	private boolean festivalprev;	//이전 페이지 여부 
	private boolean festivalnext;	//다음 페이지 여부 

	public int getfestivallistSize() {
		return festivallistSize;
	}

	public void setfestivallistSize(int festivallistSize) {
		this.festivallistSize = festivallistSize;
	}

	public int getfestivalrangeSize() {
		return festivalrangeSize;
	}

	public void setfestivalrangeSize(int festivalrangeSize) {
		this.festivalrangeSize = festivalrangeSize;
	}

	public int getfestivalpage() {
		return festivalpage;
	}

	public void setfestivalpage(int festivalpage) {
		this.festivalpage = festivalpage;
	}

	public int getfestivalrange() {
		return festivalrange;
	}

	public void setfestivalrange(int festivalrange) {
		this.festivalrange = festivalrange;
	}

	public int getfestivallistCnt() {
		return festivallistCnt;
	}

	public void setfestivallistCnt(int festivallistCnt) {
		this.festivallistCnt = festivallistCnt;
	}

	public int getfestivalpageCnt() {
		return festivalpageCnt;
	}

	public void setfestivalpageCnt(int festivalpageCnt) {
		this.festivalpageCnt = festivalpageCnt;
	}

	public int getfestivalstartPage() {
		return festivalstartPage;
	}

	public void setfestivalstartPage(int festivalstartPage) {
		this.festivalstartPage = festivalstartPage;
	}

	public int getfestivalstartList() {
		return festivalstartList;
	}

	public void setfestivalstartList(int festivalstartList) {
		this.festivalstartList = festivalstartList;
	}

	public int getfestivalendPage() {
		return festivalendPage;
	}

	public void setfestivalendPage(int festivalendPage) {
		this.festivalendPage = festivalendPage;
	}

	public boolean isfestivalprev() {
		return festivalprev;
	}

	public void setfestivalprev(boolean festivalprev) {
		this.festivalprev = festivalprev;
	}

	public boolean isfestivalnext() {
		return festivalnext;
	}

	public void setfestivalnext(boolean festivalnext) {
		this.festivalnext = festivalnext;
	}

	/* 순서대로 현재 페이지 , 현재 페이지 범위, 게시물 총 개수 */
	public void pageInfo(int festivalpage, int festivalrange, int festivallistCnt) {

		this.festivalpage = festivalpage;
		this.festivalrange = festivalrange;
		this.festivallistCnt = festivallistCnt;

		//전체 페이지수 
		this.festivalpageCnt = (int) Math.ceil((double)festivallistCnt / festivallistSize);

		// 시작 페이지
		this.festivalstartPage = (festivalrange - 1) * festivalrangeSize + 1;

		//끝 페이지
		this.festivalendPage = festivalrange * festivalrangeSize;

		// 게시판 시작번호
		this.festivalstartList = (festivalpage - 1) * festivallistSize;
		
		//이전 버튼 상태
		this.festivalprev = festivalrange == 1 ? false : true;

		//
		
		//다음 버튼 상태
		this.festivalnext = festivalpageCnt > festivalendPage ? true : false;
		if (this.festivalendPage > this.festivalpageCnt) {
			this.festivalendPage = this.festivalpageCnt;
			this.festivalnext = false;
		}
	}
}
