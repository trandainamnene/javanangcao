package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;
import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getSach() throws Exception{
			ArrayList<sachbean> ds = new ArrayList<>();
			KetNoi kn = new KetNoi();
			kn.ketNoi();
			String sql = "select * from sach";
			PreparedStatement ps = kn.cn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String masach = rs.getString("masach");
				String tensach = rs.getString("tensach");
				String tacgia = rs.getString("tacgia");
				Long soluong = rs.getLong("soLuong");
				Long gia = rs.getLong("gia");
				String anh = rs.getString("anh");
				String maloai = rs.getString("maloai");
				ds.add(new sachbean(masach, tensach, tacgia, soluong, gia, anh, maloai));
			}
			kn.cn.close();
			rs.close();
			return ds;
	}
	
	public ArrayList<sachbean> phanTrang(int page , int qty) throws Exception {
		ArrayList<sachbean> dsPhanTrang = new ArrayList<>();
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * from sach order by masach offset ? rows fetch next ? rows only";
		PreparedStatement ps = kn.cn.prepareStatement(sql);
		ps.setInt(1, qty * (page -1) );
		ps.setInt(2, qty);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			String masach = rs.getString("masach");
			String tensach = rs.getString("tensach");
			String tacgia = rs.getString("tacgia");
			Long soluong = rs.getLong("soLuong");
			Long gia = rs.getLong("gia");
			String anh = rs.getString("anh");
			String maloai = rs.getString("maloai");
			dsPhanTrang.add(new sachbean(masach, tensach, tacgia, soluong, gia, anh, maloai));
		}
		kn.cn.close();
		rs.close();
		return dsPhanTrang;
	}
	
	

}