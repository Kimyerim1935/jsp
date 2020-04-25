package board_2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import board.command.*;
/**
 * Servlet implementation class BoardFrontController
 */
@WebServlet("*.bbs")
public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	request.setCharacterEncoding("UTF-8");
	String requestURI = request.getRequestURI();
	String contextPath = request.getContextPath();
	String cmdURI = requestURI.substring(contextPath.length());
	
	BoardCmd cmd = null;
	String viewPage = null;
	
	//글 목록 조회처리
	if(cmdURI.equals("/BoardList.bbs"))
	{
		cmd = new BoardListCmd();
		cmd.execute(request, response);
		viewPage = "boardList.jsp";
	}
	
	RequestDispatcher dis = request.getRequestDispatcher(viewPage);
	dis.forward(request, response);
	
	}

}
