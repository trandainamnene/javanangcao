package bean;

import java.util.Date;

public class chitietlichsubean {
	String masach;
	String tensach;
	int makh;
	int SoLuongMua;
	int damua;
	Date NgayMua;
	Long gia;
	Long MaHoaDon;
	Long thanhTien;
	
	
	public chitietlichsubean(String masach, String tensach, int makh, int soLuongMua, int damua, Date ngayMua, Long gia,
			Long MaHoaDon, Long thanhTien) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.makh = makh;
		SoLuongMua = soLuongMua;
		this.damua = damua;
		NgayMua = ngayMua;
		this.gia = gia;
		this.MaHoaDon = MaHoaDon;
		this.thanhTien = thanhTien;
	}
	
	public Long getGia() {
		return gia;
	}

	public void setGia(Long gia) {
		this.gia = gia;
	}

	public Long getMahd() {
		return mahd;
	}

	public void setMahd(Long mahd) {
		this.mahd = mahd;
	}

	public Long getThanhTien() {
		return thanhTien;
	}
	public void setThanhTien(Long thanhTien) {
		this.thanhTien = thanhTien;
	}
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public int getMakh() {
		return makh;
	}
	public void setMakh(int makh) {
		this.makh = makh;
	}
	public int getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(int soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public int getDamua() {
		return damua;
	}
	public void setDamua(int damua) {
		this.damua = damua;
	}
	public Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(Date ngayMua) {
		NgayMua = ngayMua;
	}
	
}
