package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.chitiethoadonbean;
import bean.chitietlichsubean;
import bean.giohangbean;
import bean.khachhangbean;
import bo.chitietlichsubo;
import bo.giohangbo;
import bo.khachhangbo;
import bo.lichsubo;

/**
 * Servlet implementation class lichsuController
 */
@WebServlet("/lichsuController")
public class lichsuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lichsuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			khachhangbo khbo = new khachhangbo();
			HttpSession session = request.getSession();
			if (session.getAttribute("dn") == null) {
				response.sendRedirect("dangnhapController?dadangnhap=false");
			} else {
				chitietlichsubo lsboct = new chitietlichsubo();
				lichsubo lsbo = new lichsubo();
				giohangbo ghbo =  (giohangbo)session.getAttribute("gh");
				String username = ((khachhangbean)session.getAttribute("dn")).getTendn();
				if (ghbo != null) {
					lsbo.ThemHoaDon(khbo.getMaKH(username));
					for (giohangbean i : ghbo.ds) {
						lsbo.ThemHoaDonDetail(i.getMaSach(), i.getSoLuongMua());
					}
					ghbo.ds.clear();
				}
				ArrayList<chitietlichsubean> ds = new ArrayList<chitietlichsubean>();
				ds = lsboct.getDs(khbo.getMaKH(username));
				request.setAttribute("dsdamua" , ds);
			}
			RequestDispatcher rd = request.getRequestDispatcher("lsmua.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
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
