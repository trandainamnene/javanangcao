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
import bo.sachbo;

/**
 * Servlet implementation class phanTrangController
 */
@WebServlet("/phanTrangController")
public class phanTrangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public phanTrangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			response.setCharacterEncoding("utf8");
			String html = "";
			int numberpage = request.getParameter("page") == null ? 1 :  Integer.parseInt(request.getParameter("page"));
			int qty = 9;
			sachbo sbo = new sachbo();
			ArrayList<sachbean> dsPhantrang = sbo.getSachPhanTrang(numberpage, qty);

			for (sachbean i : dsPhantrang) {
					html += "	<div class=\"col-lg-4 col-md-6 col-sm-12 mb-5\">\r\n"
							+ "					<div class=\"card-book\">\r\n"
							+ "						<img src=\""+i.getAnh()+"\" class=\"image-book\"> <br>\r\n"
							+ "						<div class=\"card-book__content\">\r\n"
							+ "							<h3 class=\"over-flow\">"+i.getTensach()+"<br></h3>\r\n"
							+ "							<p class=\"over-flow\">"+i.getTacgia()+"</p>\r\n"
							+ "							<b class=\"price text-success\">"+ i.getGia()+"<br></b>\r\n"
							+ "							<a href=\"giohangController?ms="+i.getMasach()+"&ts="+i.getTensach()+"&gia="+i.getGia()+"anh="+i.getAnh()+" class=\"btn btn-dark\"><i class='bx bx-cart mr-1'></i>Mua ngay</a>\r\n"
							+ "						</div>\r\n"
							+ "					</div>				\r\n"
							+ "				</div>\r\n";
				}
				response.getWriter().println(html);
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
