package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.chitietlichsubean;

public class chitietlichsudao {
	public ArrayList<chitietlichsubean> getLs(int makh) throws Exception{
		ArrayList<chitietlichsubean> dsDetail = new ArrayList<chitietlichsubean>();
		KetNoi connect = new KetNoi();
		connect.ketNoi();
		String sql = "select * from LichSuMua where makh=?";
		PreparedStatement ps = connect.cn.prepareStatement(sql);
		ps.setInt(1, makh);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			String masach = rs.getString("masach");
			String tensach = rs.getString("tensach");
			int makhang = rs.getInt("makh");
			int soLuongMua = rs.getInt("SoLuongMua");
			int damua = rs.getInt("damua");
			Date ngayMua = rs.getDate("ngayMua");
			Long thanhtien = rs.getLong("thanhtien");
			Long gia = rs.getLong("gia");
			Long MaHoaDon = rs.getLong("MaHoaDon");
			dsDetail.add(new chitietlichsubean(masach, tensach, makhang, soLuongMua, damua, ngayMua, gia, MaHoaDon, thanhtien));
		}
		connect.cn.close();
		ps.close();
		return dsDetail;
	}
}
