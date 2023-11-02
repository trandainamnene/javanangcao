package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import bean.chitiethoadonbean;
import bean.lichsubean;

public class lichsudao {
	public void insertHoaDon(int makh) throws Exception{
		KetNoi connect = new KetNoi();
		connect.ketNoi();
		String sql = "insert into hoadon (makh , NgayMua , damua)\r\n"
				+ "			values(? ,?, null)";
		PreparedStatement ps = connect.cn.prepareStatement(sql);
		ps.setInt(1, makh);
		SimpleDateFormat f = new SimpleDateFormat("yyyy/MM/dd");
		Long dutil = new Date().getTime();
		java.sql.Date date = new java.sql.Date(dutil);
		ps.setDate(2, date);
		ps.executeUpdate();
		ps.close();
		connect.cn.close();
	}
	
	public void insertHoaDonDettail(String masach , long soluongmua , int damua , int mahoadon) throws Exception{
		KetNoi connect = new KetNoi();
		connect.ketNoi();
		String sql = "insert into ChiTietHoaDon(Masach , SoLuongMua , damua , MaHoaDon)\r\n"
				+ "	values(? , ? , ? , ?)";
		PreparedStatement ps = connect.cn.prepareStatement(sql);
		ps.setString(1, masach);
		ps.setLong(2, soluongmua);
		ps.setInt(3, damua);
		ps.setInt(4, mahoadon);
		ps.executeUpdate();
		ps.close();
		connect.cn.close();
	}
	
	public ArrayList<chitiethoadonbean> getHoaDonDettail(String username) throws Exception{
		ArrayList<chitiethoadonbean> ds = new ArrayList<chitiethoadonbean>();
		KetNoi connect = new KetNoi();
		connect.ketNoi();
		String sql = "select * \r\n"
				+ "from hoadon inner join KhachHang on hoadon.makh = KhachHang.makh inner join ChiTietHoaDon on hoadon.MaHoaDon = ChiTietHoaDon.MaHoaDon "
				+ "inner join sach on ChiTietHoaDon.MaSach = sach.masach\r\n"
				+ "where tendn = ?";
		PreparedStatement ps = connect.cn.prepareStatement(sql);
		ps.setString(1, username);
		ResultSet rs = ps.executeQuery();
		while (rs.next())
		{
			String maSach = rs.getString("masach");
			Long soLuongMua = rs.getLong("SoLuongMua");
			int damua = rs.getInt("damua");
			int maHoaDon = rs.getInt("MaHoaDon");
			int makh = rs.getInt("makh");
			Date ngaymua =  rs.getDate("ngaymua");
			ds.add(new chitiethoadonbean(maSach, soLuongMua, damua, maHoaDon));
		}
		ps.close();
		rs.close();
		connect.cn.close();
		return ds;
	}
	
	public int getMaHoaDon() throws Exception
	{
		int mahd = 0;
		KetNoi connect = new KetNoi();
		connect.ketNoi();
		String sql = "select MAX(MaHoaDon) as MaHoaDon from hoadon";
		PreparedStatement ps = connect.cn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		if (rs.next()){
			mahd = rs.getInt("MaHoaDon");
		}
		return mahd;
	}
	
}
