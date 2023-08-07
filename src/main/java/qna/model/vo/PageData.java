package qna.model.vo;

import java.util.List;

public class PageData {
	private List<Qna> qList;
	private String pageNavi;
	
	public PageData() {}

	public PageData(List<Qna> qList, String pageNavi) {
		super();
		this.qList = qList;
		this.pageNavi = pageNavi;
	}

	public List<Qna> getqList() {
		return qList;
	}

	public void setqList(List<Qna> qList) {
		this.qList = qList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}

	@Override
	public String toString() {
		return "PageData [qList=" + qList + ", pageNavi=" + pageNavi + "]";
	}
}
