package qna.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import qna.model.service.QnaService;
import qna.model.vo.Qna;

/**
 * Servlet implementation class MyQnaModifyController
 */
@WebServlet("/myQna/modify.do")
public class MyQnaModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyQnaModifyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnaService service = new QnaService();
		int myQnaNo = Integer.parseInt(request.getParameter("myQnaNo"));
		Qna myQna = service.selectOneByNo(myQnaNo);
		request.setAttribute("myQna", myQna);
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/qna/myQnaModify.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String myQnaTitle = request.getParameter("qnaList");
		String myQnaContent = request.getParameter("content");
		String myQnaWriter = request.getParameter("writer");
		String myQnaPw = request.getParameter("password");
		int myQnaNo = Integer.parseInt(request.getParameter("myQnaNo"));
		Qna qna = new Qna(myQnaNo, myQnaTitle, myQnaContent, myQnaWriter, myQnaPw);
		QnaService service = new QnaService();
		int result = service.updateQna(qna);
		response.setContentType("text/html; charset=UTF-8");
		if(result > 0) {
			PrintWriter  writer = response.getWriter();
			writer.println("<script>alert('문의가 수정되었습니다.'); location.href='/myQna/list.do?memberId="+myQnaWriter+"&currentPage=1';</script>");
			writer.close();
		} else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('문의 수정을 실패하였습니다.'); history.back();</script>");
			writer.close();
		}
	}

}
