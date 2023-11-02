package bean;

import java.util.Date;

public class lichsubean {
	int makh;
	Date ngaymua;
	int damua;
	public lichsubean(int makh, Date ngaymua, int damua) {
		super();
		this.makh = makh;
		this.ngaymua = ngaymua;
		this.damua = damua;
	}
	public int getMakh() {
		return makh;
	}
	public void setMakh(int makh) {
		this.makh = makh;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	public int getDamua() {
		return damua;
	}
	public void setDamua(int damua) {
		this.damua = damua;
	}
}
