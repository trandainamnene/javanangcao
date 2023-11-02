package bo;

import java.util.ArrayList;

import bean.chitietlichsubean;
import dao.chitietlichsudao;

public class chitietlichsubo {
	chitietlichsudao ctlsdao = new chitietlichsudao();
	public ArrayList<chitietlichsubean> getDs(int makh) throws Exception {
		return ctlsdao.getLs(makh);
	}
}
