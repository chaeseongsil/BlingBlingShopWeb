package member.model.vo;

import java.sql.Timestamp;

public class Member {
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberPostCode;
	private String memberAddr1;
	private String memberAddr2;
	private String memberPhone;
	private String memberEmail;
	private int point;
	private Timestamp memberDate;
	private String memberYn;
	
	public Member() {}
	
	public Member(String memberId, String memberPw) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
	}
	
	public Member(String memberId, String memberName, String memberEmail) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.memberEmail = memberEmail;
	}

	public Member(String memberId, String memberPw, String memberName, String memberPostCode, String memberAddr1,
			String memberAddr2, String memberPhone, String memberEmail) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberPostCode = memberPostCode;
		this.memberAddr1 = memberAddr1;
		this.memberAddr2 = memberAddr2;
		this.memberPhone = memberPhone;
		this.memberEmail = memberEmail;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberPostCode() {
		return memberPostCode;
	}

	public void setMemberPostCode(String memberPostCode) {
		this.memberPostCode = memberPostCode;
	}

	public String getMemberAddr1() {
		return memberAddr1;
	}

	public void setMemberAddr1(String memberAddr1) {
		this.memberAddr1 = memberAddr1;
	}

	public String getMemberAddr2() {
		return memberAddr2;
	}

	public void setMemberAddr2(String memberAddr2) {
		this.memberAddr2 = memberAddr2;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public Timestamp getMemberDate() {
		return memberDate;
	}

	public void setMemberDate(Timestamp memberDate) {
		this.memberDate = memberDate;
	}

	public String getMemberYn() {
		return memberYn;
	}

	public void setMemberYn(String memberYn) {
		this.memberYn = memberYn;
	}

	@Override
	public String toString() {
		return "회원 [아이디=" + memberId + ", 비밀번호=" + memberPw + ", 이름=" + memberName
				+ ", 우편번호=" + memberPostCode + ", 기본주소=" + memberAddr1 + ", 상세주소=" + memberAddr2
				+ ", 전화번호=" + memberPhone + ", 이메일=" + memberEmail + ", 포인트=" + point + ", 가입일자="
				+ memberDate + ", 회원여부=" + memberYn + "]";
	}
	
}
