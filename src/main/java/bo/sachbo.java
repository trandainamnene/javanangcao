package bo;

import java.util.ArrayList;


import bean.sachbean;
import dao.sachdao;

public class sachbo {
		sachdao sdao= new sachdao();
		ArrayList<sachbean> ds;
		public ArrayList<sachbean> getSach() throws Exception{
			ds = sdao.getSach();
			return ds;
			
		}
		
		public ArrayList<sachbean> getSachPhanTrang(int page , int qty) throws Exception{
			ds = sdao.phanTrang(page, qty);
			return ds;
			
		}
		
			public ArrayList<sachbean> TimLoai(String maloai) throws Exception{
				//Tim sach theo ma loai
				ArrayList<sachbean> tam = new ArrayList<sachbean>();
		         for(sachbean s:ds)
		              if (s.getMaloai().toLowerCase().equals(maloai.trim().toLowerCase())) 
		                  tam.add(s);	    
				return tam;
			}
		
			public ArrayList<sachbean> Tim(String key) throws Exception{
				//Tim sach theo ten sach hoac tac gia
				 ArrayList<sachbean> tam = new ArrayList<sachbean>();
		         for(sachbean s:ds)
		              if (s.getTensach().toLowerCase().contains(key.toLowerCase())) 
		                  tam.add(s);	              
		              else if (s.getTacgia().toLowerCase().contains(key.toLowerCase()))	              
		    		       tam.add(s);              
				return tam;
			}
	}