package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bo.giohangbo;

/**
 * Servlet implementation class xoaController
 */
@WebServlet("/xoaController")
public class xoaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xoaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			HttpSession session = request.getSession();
			String maXoa = request.getParameter("ms");
			String step = request.getParameter("step");
			
			giohangbo lstGioHang = (giohangbo)session.getAttribute("gh");
			if (step == null)
			{
				lstGioHang.Xoa(maXoa);
			}
			
			if (maXoa != null){
				for (giohangbean i : lstGioHang.ds)
				{
					if (i.getMaSach().equals(maXoa)){
						lstGioHang.Them(maXoa, "", "" ,Long.parseLong(step), (long)0);
						break;
					}
				}
			}
			String deleteall = request.getParameter("deleteall");
			String[] dsMaSach = request.getParameterValues("cb-masach");
			if (dsMaSach != null)
			{
				lstGioHang = (giohangbo)session.getAttribute("gh");
				for (String i : dsMaSach)
				{
					lstGioHang.Xoa(i);
				}
			}
			if (deleteall != null)
			{
				lstGioHang = (giohangbo)session.getAttribute("gh");
				lstGioHang.ds.clear();
			}
			response.sendRedirect("giohangController");
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
