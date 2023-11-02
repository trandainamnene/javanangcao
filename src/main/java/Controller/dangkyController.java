package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class dangkyController
 */
@WebServlet("/dangkyController")
public class dangkyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			try {
				khachhangbo khbo = new khachhangbo();
				khachhangbean kh = new khachhangbean(request.getParameter("hoten"), request.getParameter("diachi"), request.getParameter("sdt"), request.getParameter("email"), request.getParameter("username"), request.getParameter("password"));
				if (kh.getTendn() == null) {
					request.setAttribute("trangthaiDK", null);
				} else 
				{
					if (khbo.khDangKy(kh)) {
						request.setAttribute("trangthaiDK", true);
					} else 
					{
						request.setAttribute("trangthaiDK", false);
					}
				}
				
				RequestDispatcher rd = request.getRequestDispatcher("dangky.jsp");
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
