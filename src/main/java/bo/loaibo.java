package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaido;

public class loaibo {
	loaido ldao = new loaido();
	public ArrayList<loaibean> getLoai() throws Exception{
		return ldao.getLoai();
	}
}
