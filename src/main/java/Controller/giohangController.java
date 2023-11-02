package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class giohangController
 */
@WebServlet("/giohangController")
public class giohangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			loaibo lbo = new loaibo();
			sachbo sbo = new sachbo();
			HttpSession session = request.getSession();
			String ms = request.getParameter("ms");
			String ts = request.getParameter("ts");
			String gia = request.getParameter("gia");
			String anh = request.getParameter("anh");
			
			giohangbo gh = null;
			if (ms != null && ts != null && gia != null && anh != null)
			{
				if (session.getAttribute("gh") == null)
				{
					gh = new giohangbo();
					session.setAttribute("gh" , gh);
				}
			
			gh = (giohangbo)session.getAttribute("gh");			
			gh.Them(ms, ts, anh , (long)1, Long.parseLong(gia));
			response.sendRedirect("giohangController");
			}
			request.setAttribute("dsLoai", lbo.getLoai());
			RequestDispatcher rd = request.getRequestDispatcher("htgiohang.jsp");
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
