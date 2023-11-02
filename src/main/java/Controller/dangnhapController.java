package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class dangnhapController
 */
@WebServlet("/dangnhapController")
public class dangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//lay ve un, pass
		//Neu un = "abc" va pass = "123"
			// tao ra 1 session ten la dn va gan un vao session
			//Quay ve menu
		// Nguoc lai hien thi TB	
		try {
			String untam = request.getParameter("txtun");
			String passtam = request.getParameter("txtpass");
			
			if (untam != null && passtam != null)
			{
				khachhangbo khbo = new khachhangbo();
				khachhangbean isLogin = khbo.checkDangNhap(untam, passtam);
				if (isLogin != null)
				{
					HttpSession session = request.getSession();
					if (session.getAttribute("dn") == null)
					{
						session.setAttribute("dn", isLogin);	
					}
					response.sendRedirect("sachController");
					return;
				} else {
					request.setAttribute("kt", false);
				}
			}
			RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
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
