package bo;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao khdao = new khachhangdao();
	
	public boolean khDangKy(khachhangbean kh) throws Exception{
		if (khdao.getAcc(kh) != null)
		{
			khdao.themKH(kh);
			return true;
		}
		return false;
	}
	
	public khachhangbean checkDangNhap(String username , String password) throws Exception {
		return khdao.dangNhap(username, password);
	}
	
	public int getMaKH(String username) throws Exception{
		return khdao.getMaKH(username);
	}

}
