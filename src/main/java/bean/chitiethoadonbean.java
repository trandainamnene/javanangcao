package bean;

public class chitiethoadonbean {
	String MaSach;
	Long SoLuongMua;
	int damua;
	int MaHoaDon;
	public chitiethoadonbean(String maSach, Long soLuongMua, int damua, int maHoaDon) {
		super();
		MaSach = maSach;
		SoLuongMua = soLuongMua;
		this.damua = damua;
		MaHoaDon = maHoaDon;
	}
	public String getMaSach() {
		return MaSach;
	}
	public void setMaSach(String maSach) {
		MaSach = maSach;
	}
	public Long getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(Long soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public int getDamua() {
		return damua;
	}
	public void setDamua(int damua) {
		this.damua = damua;
	}
	public int getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	
}
