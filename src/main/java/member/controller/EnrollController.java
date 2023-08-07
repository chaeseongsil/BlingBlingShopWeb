package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class EnrollController
 */
@WebServlet("/member/register.do")
public class EnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnrollController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memberId = request.getParameter("userId");
		String memberPw = request.getParameter("userPw");
		String memberName = request.getParameter("userName");
		String memberPostCode = request.getParameter("userPost");
		String memberAddr1 = request.getParameter("userPostAddr1");
		String memberAddr2 = request.getParameter("userPostAddr2");
		String memberPhone = request.getParameter("tel1")+request.getParameter("tel2");
		String memberEmail = request.getParameter("userEmail");
		
		Member member = new Member(memberId, memberPw, memberName, memberPostCode, memberAddr1, memberAddr2, memberPhone, memberEmail);
		MemberService service = new MemberService();
		int result = service.insertMember(member);
		response.setContentType("text/html; charset=UTF-8");
		if(result > 0) {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('가입이 완료되었습니다. 로그인해주세요.'); location.href='/member/login.do'</script>");
			writer.close();
		} else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('회원가입 실패'); history.back();</script>");
		}
		
	}

}
