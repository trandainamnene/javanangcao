package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.spi.DirStateFactory.Result;

import bean.khachhangbean;
import bo.maHoaMD5;

public class khachhangdao {
	
	public khachhangbean getAcc(khachhangbean kh) throws Exception {
		KetNoi connect = new KetNoi();
		connect.ketNoi();
		String sql = "select * from KhachHang where tendn=?";
		PreparedStatement ps = connect.cn.prepareStatement(sql);
		ps.setString(1, kh.getTendn());
		ResultSet rs =  ps.executeQuery();			
		while (rs.next()) {
			connect.cn.close();
			ps.close();
			return null;
		}
		connect.cn.close();
		ps.close();
		return kh;
	}
	
	public int themKH(khachhangbean kh) throws Exception {
		KetNoi connect = new KetNoi();
		connect.ketNoi();
		String sql = "insert into KhachHang(hoten , diachi , sodt , email , tendn , pass) values (? , ? , ? , ? , ? , ?)";
		PreparedStatement ps = connect.cn.prepareStatement(sql);
		ps.setString(1, kh.getHoten());
		ps.setString(2 , kh.getDiachi());
		ps.setString(3, kh.getSodt());
		ps.setString(4, kh.getEmail());
		ps.setString(5, kh.getTendn());
		ps.setString(6, maHoaMD5.ecrypt(kh.getPass()));
		int qty = ps.executeUpdate();
		ps.close();
		connect.cn.close();
		return qty;
	}
	
	public khachhangbean dangNhap(String username , String password) throws Exception {
		khachhangbean khdn = null;
		KetNoi connect = new KetNoi();
		connect.ketNoi();
		String sql = "select * from KhachHang where tendn = ? and pass = ?";
		PreparedStatement ps = connect.cn.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, maHoaMD5.ecrypt(password));
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			String sodt = rs.getString("sodt");
			String email = rs.getString("email");
			String tendn = rs.getString("tendn");
			String pass = rs.getString("pass");
			khdn = new khachhangbean(hoten, diachi, sodt, email, tendn, pass);
		}
		connect.cn.close();
		ps.close();
		return khdn;
	}
	
	public int getMaKH(String username) throws Exception{
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * \r\n"
				+ "from KhachHang\r\n"
				+ "where tendn = ? ";
		PreparedStatement ps = kn.cn.prepareStatement(sql);
		ps.setString(1, username);
		ResultSet rs =  ps.executeQuery();
		rs.next();
		return rs.getInt("makh");
	}

}
