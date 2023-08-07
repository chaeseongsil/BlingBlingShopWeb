package qna.model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import qna.model.vo.Qna;

public class QnaDAO {

	public int insertQna(Connection conn, Qna qna) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO MYQNA_TBL VALUES(SEQ_MYQNA_NO.NEXTVAL, ?, ?, ?, ?, DEFAULT, DEFAULT)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, qna.getMyQnaTitle());
			pstmt.setString(2, qna.getMyQnaContent());
			pstmt.setString(3, qna.getMyQnaWriter());
			pstmt.setString(4, qna.getMyQnaPw());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int updateQna(Connection conn, Qna qna) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "UPDATE MYQNA_TBL SET MYQNA_TITLE = ?, MYQNA_CONTENT = ?, MYQNA_PW = ? WHERE MYQNA_NO = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, qna.getMyQnaTitle());
			pstmt.setString(2, qna.getMyQnaContent());
			pstmt.setString(3, qna.getMyQnaPw());
			pstmt.setInt(4, qna.getMyQnaNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int deleteQna(Connection conn, int myQnaNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "DELETE FROM MYQNA_TBL WHERE MYQNA_NO = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, myQnaNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}

	public List<Qna> selectQnaList(Connection conn, String myQnaWriter) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Qna> qList = new ArrayList<Qna>();
		String query = "SELECT * FROM MYQNA_TBL WHERE MYQNA_WRITER = ? ORDER BY MYQNA_NO DESC";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, myQnaWriter);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Qna qna = rsetToQna(rset);
				qList.add(qna);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return qList;
	}

	public List<Qna> selectQnaList(Connection conn, int currentPage, String myQnaWriter) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Qna> qList = new ArrayList<Qna>();
		String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY MYQNA_NO DESC) ROW_NUM, MYQNA_TBL.* FROM MYQNA_TBL WHERE MYQNA_WRITER = ?) WHERE ROW_NUM BETWEEN ? AND ?";
		int recordCountPerPage = 5;
		int start = currentPage*recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage*recordCountPerPage;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, myQnaWriter);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Qna qna = rsetToQna(rset);
				qList.add(qna);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return qList;
	}
	public int selectCountMyQna(Connection conn, String myQnaWriter) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "SELECT COUNT(*) FROM MYQNA_TBL WHERE MYQNA_WRITER = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, myQnaWriter);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt("COUNT(*)");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	public String generatePageNavi(Connection conn, int currentPage, String myQnaWriter) {
		int totalCount = selectCountMyQna(conn, myQnaWriter);
		int recordCountPerPage = 5;
		int naviTotalCount = 0;
		if(totalCount % recordCountPerPage > 0) {
			naviTotalCount = totalCount / recordCountPerPage + 1;
		}else {
			naviTotalCount = totalCount / recordCountPerPage;
		}
		int naviCountPerPage = 5;
		int startNavi = ((currentPage-1)/naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		boolean needPrev = (startNavi == 1) ? false : true;
		boolean needNext = (endNavi == naviTotalCount) ? false : true;
		StringBuilder result = new StringBuilder();
		if(needPrev) {
			result.append("<a href='/myQna/list.do?memberId="+myQnaWriter+"&currentPage="+(startNavi-1)+"'>"
					+ "<button class=\"prev-btn\">\r\n"
					+ "                                <img src=\"https://cdn-icons-png.flaticon.com/512/271/271220.png\" alt=\"\">\r\n"
					+ "                            </button></a>");
		}
		for(int i = startNavi; i <= endNavi; i++) {
			result.append("<a href='/myQna/list.do?memberId="+myQnaWriter+"&currentPage="+i+"'>"+i+"&nbsp;&nbsp;</a>");
		}
		if(needNext) {
			result.append("<a href='/myQna/list.do?memberId="+myQnaWriter+"&currentPage="+(endNavi+1)+"'><button class=\"next-btn\">\r\n"
					+ "                                <img src=\"https://cdn-icons-png.flaticon.com/512/87/87425.png\" alt=\"\">\r\n"
					+ "                            </button></a>");
		}
		return result.toString();
	}
	public Qna selectOneByNo(Connection conn, int myQnaNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM MYQNA_TBL WHERE MYQNA_NO = ?";
		Qna qna = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, myQnaNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				qna = rsetToQna(rset);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return qna;
	}

	private Qna rsetToQna(ResultSet rset) throws SQLException {
		Qna qna = new Qna();
		qna.setMyQnaNo(rset.getInt("MYQNA_NO"));
		qna.setMyQnaTitle(rset.getString("MYQNA_TITLE"));
		qna.setMyQnaContent(rset.getString("MYQNA_CONTENT"));
		qna.setMyQnaWriter(rset.getString("MYQNA_WRITER"));
		qna.setMyQnaPw(rset.getString("MYQNA_PW"));
		qna.setMyQnaDate(rset.getTimestamp("MYQNA_DATE"));
		qna.setViewCount(rset.getInt("VIEW_COUNT"));
		return qna;
	}

}
