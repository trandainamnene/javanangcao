package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;

import bean.loaibean;

public class loaido {

	public ArrayList<loaibean> getLoai() throws Exception{
		ArrayList<loaibean> ds = new ArrayList<>();
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * from loai";
		PreparedStatement ps = kn.cn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			String maloai = rs.getString("maloai");
			String teLoai = rs.getString("tenloai");
			ds.add(new loaibean(maloai, teLoai));
		}
		kn.cn.close();
		rs.close();
		return ds;
	}
}
