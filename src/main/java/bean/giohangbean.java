package bean;

public class giohangbean {
	private String maSach;
	private String tenSach;
	private String anh;
	private Long soLuongMua;
	private Long gia;
	private Long thanhTien;
	public giohangbean() {
		super();
	}
	public giohangbean(String maSach, String tenSach , String anh , Long soLuongMua, Long gia) {
		super();
		this.maSach = maSach;
		this.tenSach = tenSach;
		this.soLuongMua = soLuongMua;
		this.gia = gia*soLuongMua;
		this.anh = anh;
	}
	public String getMaSach() {
		return maSach;
	}
	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}
	public String getTenSach() {
		return tenSach;
	}
	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}
	public Long getSoLuongMua() {
		return soLuongMua;
	}
	public void setSoLuongMua(Long soLuongMua) {
		this.soLuongMua = soLuongMua;
	}
	public Long getGia() {
		return gia;
	}
	public void setGia(Long gia) {
		this.gia = gia;
	}
	public Long getThanhTien() {
		return soLuongMua * gia;
	}
	public void setThanhTien(Long thanhTien) {
		this.thanhTien = thanhTien;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	
	
	
}
