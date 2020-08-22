package com.project.travel.common;

public class Pagination {

	private int qnalistSize = 10; // �ʱⰪ���� ��ϰ����� 10���� ����
	private int qnarangeSize = 10; // �ʱⰪ���� ������������ 10���� ����
	private int qnapage;
	private int qnarange;
	private int qnalistCnt;
	private int qnapageCnt;
	private int qnastartPage;
	private int qnastartList;
	private int qnaendPage;
	private boolean qnaprev;
	private boolean qnanext;

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

		// ��ü ��������
		this.qnapageCnt = (int) Math.ceil((double)qnalistCnt / qnalistSize);

		// ���� ������
		this.qnastartPage = (qnarange - 1) * qnarangeSize + 1;

		// �� ������
		this.qnaendPage = qnarange * qnarangeSize;

		// �Խ��� ���۹�ȣ
		this.qnastartList = (qnapage - 1) * qnalistSize;
		
		// ���� ��ư ����
		this.qnaprev = qnarange == 1 ? false : true;

		// ���� ��ư ����
		this.qnanext = qnapageCnt > qnaendPage ? true : false;
		if (this.qnaendPage > this.qnapageCnt) {
			this.qnaendPage = this.qnapageCnt;
			this.qnanext = false;
		}
	}
}
