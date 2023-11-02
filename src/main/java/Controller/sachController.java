package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.sachbean;
import bo.giohangbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class sachController
 */
@WebServlet("/sachController")
public class sachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 * 
	 */
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html");
			loaibo lbo = new loaibo();
			sachbo sbo = new sachbo();
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			request.setAttribute("dsloai", lbo.getLoai());
			
			int numberpage = request.getParameter("page") == null ? 1 :  Integer.parseInt(request.getParameter("page"));
			int qty = 9;
			ArrayList<sachbean> dsPhantrang = sbo.getSachPhanTrang(numberpage, qty);
			ArrayList<sachbean> ds = sbo.getSach();
			String tuKhoa = request.getParameter("tukhoa");
			String chon = request.getParameter("ml");
			if (tuKhoa != null && tuKhoa.trim().length() != 0) {
				ArrayList<sachbean> dsTimKiem = sbo.Tim(tuKhoa);
				dsPhantrang = dsTimKiem;
			}

			if (chon != null) {
				ArrayList<sachbean> dsChon = sbo.TimLoai(chon);
			}
			
		
			request.setAttribute("tukhoa", tuKhoa);
			request.setAttribute("dsLoai", lbo.getLoai());
			request.setAttribute("dsSach" , dsPhantrang);
			double length = Math.ceil(ds.size()/(double)qty);
			int lengthInt = (int)length;
			request.setAttribute("length", lengthInt);
			RequestDispatcher rd = request.getRequestDispatcher("menu.jsp");
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
