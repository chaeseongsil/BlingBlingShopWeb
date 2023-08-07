package member.model.service;

import java.sql.*;

import common.JDBCTemplate;
import member.model.dao.MemberDAO;
import member.model.vo.Member;

public class MemberService {
	
	private JDBCTemplate jdbcTemplate;
	private MemberDAO mDao;
	
	public MemberService() {
		jdbcTemplate = JDBCTemplate.getInstance();
		mDao = new MemberDAO();
	}

	public int insertMember(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		int result = mDao.insertMember(conn, member);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		}else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public int updateMember(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		int result = mDao.updateMember(conn, member);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		}else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public int deleteMember(String memberId) {
		Connection conn = jdbcTemplate.createConnection();
		int result = mDao.deleteMember(conn, memberId);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		}else { 
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public Member selectCheckLogin(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		Member mOne = mDao.selectCheckLogin(conn, member);
		jdbcTemplate.close(conn);
		return mOne;
	}

	public Member selectOneById(String memberId) {
		Connection conn = jdbcTemplate.createConnection();
		Member member = mDao.selectOneById(conn, memberId);
		jdbcTemplate.close(conn);
		return member;
	}

	public Member selectOneFindId(String memberName, String memberEmail) {
		Connection conn = jdbcTemplate.createConnection();
		Member member = mDao.selectOneFindId(conn, memberName, memberEmail);
		jdbcTemplate.close(conn);
		return member;
	}

	public Member selectOneFindPw(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		Member mOne = mDao.selectOneFindPw(conn, member);
		jdbcTemplate.close(conn);
		return mOne;
	}
	
}
