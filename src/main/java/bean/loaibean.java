package bean;


public class loaibean {
	private String maloai;
	private String tenLoai;
	
	public loaibean(String maloai, String tenLoai) {
		super();
		this.maloai = maloai;
		this.tenLoai = tenLoai;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getTenLoai() {
		return tenLoai;
	}
	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}
	
}
