package qna.model.vo;

import java.sql.Timestamp;

public class Qna {
	private int myQnaNo;
	private String myQnaTitle;
	private String myQnaContent;
	private String myQnaWriter;
	private String myQnaPw;
	private Timestamp myQnaDate;
	private int viewCount;
	
	public Qna() {}
	
	public Qna(String myQnaTitle, String myQnaContent, String myQnaWriter, String myQnaPw) {
		super();
		this.myQnaTitle = myQnaTitle;
		this.myQnaContent = myQnaContent;
		this.myQnaWriter = myQnaWriter;
		this.myQnaPw = myQnaPw;
	}
	
	public Qna(int myQnaNo, String myQnaTitle, String myQnaContent, String myQnaWriter, String myQnaPw) {
		super();
		this.myQnaNo = myQnaNo;
		this.myQnaTitle = myQnaTitle;
		this.myQnaContent = myQnaContent;
		this.myQnaWriter = myQnaWriter;
		this.myQnaPw = myQnaPw;
	}

	public int getMyQnaNo() {
		return myQnaNo;
	}

	public void setMyQnaNo(int myQnaNo) {
		this.myQnaNo = myQnaNo;
	}

	public String getMyQnaTitle() {
		return myQnaTitle;
	}

	public void setMyQnaTitle(String myQnaTitle) {
		this.myQnaTitle = myQnaTitle;
	}

	public String getMyQnaContent() {
		return myQnaContent;
	}

	public void setMyQnaContent(String myQnaContent) {
		this.myQnaContent = myQnaContent;
	}

	public String getMyQnaWriter() {
		return myQnaWriter;
	}

	public void setMyQnaWriter(String myQnaWriter) {
		this.myQnaWriter = myQnaWriter;
	}

	public String getMyQnaPw() {
		return myQnaPw;
	}

	public void setMyQnaPw(String myQnaPw) {
		this.myQnaPw = myQnaPw;
	}

	public Timestamp getMyQnaDate() {
		return myQnaDate;
	}

	public void setMyQnaDate(Timestamp myQnaDate) {
		this.myQnaDate = myQnaDate;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	@Override
	public String toString() {
		return "Qna [글번호=" + myQnaNo + ", 제목=" + myQnaTitle + ", 내용=" + myQnaContent
				+ ", 작성자=" + myQnaWriter + ", 비밀번호=" + myQnaPw + ", 작성일=" + myQnaDate + ", 조회수="
				+ viewCount + "]";
	}
	
	
}
