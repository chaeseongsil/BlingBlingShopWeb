package qna.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import qna.model.service.QnaService;

/**
 * Servlet implementation class MyQnaDeleteController
 */
@WebServlet("/myQna/delete.do")
public class MyQnaDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyQnaDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnaService service = new QnaService();
		String memberId = request.getParameter("memberId");
		int myQnaNo = Integer.parseInt(request.getParameter("myQnaNo"));
		int result = service.deleteQna(myQnaNo);
		response.setContentType("text/html; charset=UTF-8");
		if(result > 0) {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('삭제가 완료되었습니다.'); location.href='/myQna/list.do?memberId="+memberId+"';</script>");
			writer.close();
		}else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('오류가 발생하였습니다.'); history.back();</script>");
			writer.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
