package qna.model.service;

import java.sql.*;
import java.util.List;

import common.JDBCTemplate;
import qna.model.dao.QnaDAO;
import qna.model.vo.PageData;
import qna.model.vo.Qna;

public class QnaService {
	private JDBCTemplate jdbcTemplate;
	private QnaDAO qDao;
	
	public QnaService() {
		jdbcTemplate = JDBCTemplate.getInstance();
		qDao = new QnaDAO();
	}

	public int insertQna(Qna qna) {
		Connection conn = jdbcTemplate.createConnection();
		int result = qDao.insertQna(conn, qna);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		}else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public int updateQna(Qna qna) {
		Connection conn = jdbcTemplate.createConnection();
		int result = qDao.updateQna(conn, qna);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		}else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public int deleteQna(int myQnaNo) {
		Connection conn = jdbcTemplate.createConnection();
		int result = qDao.deleteQna(conn, myQnaNo);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		}else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public List<Qna> selectQnaList(String myQnaWriter) {
		Connection conn = jdbcTemplate.createConnection();
		List<Qna> qList = qDao.selectQnaList(conn, myQnaWriter);
		jdbcTemplate.close(conn);
		return qList;
	}

	public PageData selectQnaList(int currentPage, String myQnaWriter) {
		Connection conn = jdbcTemplate.createConnection();
		List<Qna> qList = qDao.selectQnaList(conn, currentPage, myQnaWriter);
		String pageNavi = qDao.generatePageNavi(conn, currentPage, myQnaWriter);
		PageData pd = new PageData(qList, pageNavi);
		jdbcTemplate.close(conn);
		return pd;
	}

	public Qna selectOneByNo(int myQnaNo) {
		Connection conn = jdbcTemplate.createConnection();
		Qna qna = qDao.selectOneByNo(conn, myQnaNo);
		jdbcTemplate.close(conn);
		return qna;
	}
}
