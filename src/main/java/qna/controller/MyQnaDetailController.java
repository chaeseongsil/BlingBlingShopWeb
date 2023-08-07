package qna.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import qna.model.service.QnaService;
import qna.model.vo.Qna;

/**
 * Servlet implementation class MyQnaDetailController
 */
@WebServlet("/myQna/detail.do")
public class MyQnaDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyQnaDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int myQnaNo = Integer.parseInt(request.getParameter("myQnaNo"));
		QnaService service = new QnaService();
		Qna qna = service.selectOneByNo(myQnaNo);
		response.setContentType("text/html; charset=UTF-8");
		if(qna != null) {
			request.setAttribute("myQna", qna);
			request.getRequestDispatcher("/WEB-INF/views/qna/myQnaView.jsp").forward(request, response);
		}else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('데이터 조회에 실패하였습니다.'); history.back();</script>");
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
