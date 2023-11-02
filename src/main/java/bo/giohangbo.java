package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<>();
	
	public void getGioHang() {
		
	}
	
	public void Them(String maSach, String tenSach, String anh , Long soLuongMua, Long gia) throws Exception{
		for (giohangbean i : ds)
		{
			if (i.getMaSach().equals(maSach))
			{
				i.setSoLuongMua(i.getSoLuongMua() + soLuongMua);
				return;
			}
		}
		ds.add(new giohangbean(maSach , tenSach, anh , soLuongMua, gia));
	}
	
	public void Xoa(String maSach) {
		for (giohangbean i : ds)
		{
			if (i.getMaSach().equals(maSach))
			{
				ds.remove(i);
				return;
			}
		}
	}
	
	public Long TongTien() {
		Long sum = (long) 0;
		for (giohangbean i : ds)
		{
			sum+= i.getThanhTien();
		}
		return sum;
	}
}
