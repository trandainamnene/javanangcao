package bo;

import java.util.ArrayList;

import bean.chitiethoadonbean;
import bean.lichsubean;
import dao.lichsudao;

public class lichsubo {
	lichsudao lsdao = new lichsudao();
	public void ThemHoaDon(int makh) throws Exception {
		lsdao.insertHoaDon(makh);
	}
	
	public void ThemHoaDonDetail(String masach , Long soluongmua) throws Exception {
		int getHoaDonMoiNhat = lsdao.getMaHoaDon();
		lsdao.insertHoaDonDettail(masach, soluongmua, 0, getHoaDonMoiNhat);
	}
	
	public ArrayList<chitiethoadonbean>getHoaDonDaMuaDetail(String username) throws Exception {
		return lsdao.getHoaDonDettail(username);
	}
}
