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
 * Servlet implementation class FindIdController
 */
@WebServlet("/member/findId.do")
public class FindIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/findId.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memberName = request.getParameter("userName");
		String memberEmail = request.getParameter("userEmail");
		MemberService service = new MemberService();
		Member member = service.selectOneFindId(memberName, memberEmail);
		response.setContentType("text/html; charset=UTF-8");
		if(member != null) {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('ID는 "+member.getMemberId()+"입니다. 로그인 페이지로 이동합니다.'); location.href='/member/login.do';</script>");
			writer.close();
		}else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('회원정보가 존재하지 않습니다.'); history.back();</script>");
			writer.close();
		}
	}

}
