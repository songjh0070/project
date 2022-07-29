package ranking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Detail_Dao {
	
	public ArrayList<Detail_Vo> selectGoods(){
		ArrayList<Detail_Vo> list = new ArrayList<Detail_Vo>();
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
			String id ="ranking_v1";
			String pw = "12345";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "select * from goods";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String image = rs.getString("image");
				int review = rs.getInt("review");
				String name = rs.getString("name");
				int discount = rs.getInt("discount");
				int sell_price = rs.getInt("sell_price");
				int normal_price = rs.getInt("normal_price");
				String each = rs.getString("each");
				int sales = rs.getInt("sales");
				String delivery = rs.getString("delivery");
				String benefit = rs.getString("benefit");
				String components = rs.getString("components");
				String notice = rs.getString("notice");
				String options = rs.getString("options");
				String plus = rs.getString("plus");
				String detail_image = rs.getString("detail_image");
				int price_per_100 = rs.getInt("price_per_100");
				int calories = rs.getInt("calories");
				int protein = rs.getInt("protein");
				int sodium = rs.getInt("sodium");
				int carbohydrate = rs.getInt("carbohydrate");
				int fat = rs.getInt("fat");
				
				list.add(new Detail_Vo(idx,review,discount,sell_price,normal_price,sales,price_per_100,calories,protein,sodium,carbohydrate,fat,image,name,each,delivery,benefit,components,notice,options,plus,detail_image));
			}//while
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
public ArrayList<Detail_Vo> Goods_detail(int index){
		
		ArrayList<Detail_Vo> list = new ArrayList<Detail_Vo>();
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
			String id ="ranking_v1";
			String pw = "12345";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "select * from goods where idx = ?"; 
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, index);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				int idx = rs.getInt("idx");
				double review = rs.getDouble("review");
				int discount = rs.getInt("discount");
				int sell_price = rs.getInt("sell_price");
				int normal_price = rs.getInt("normal_price");
				int sales = rs.getInt("sales");
				int price_per_100 = rs.getInt("price_per_100");
				int calories = rs.getInt("calories");
				int protein = rs.getInt("protein");
				int sodium = rs.getInt("sodium");
				int carbohydrate = rs.getInt("carbohydrate");
				int fat = rs.getInt("fat");
				String image = rs.getString("image");
				String name = rs.getString("name");
				String each = rs.getString("each");
				String delivery = rs.getString("delivery");
				String benefit = rs.getString("benefit");
				String components = rs.getString("components");
				String notice = rs.getString("notice");
				String options = rs.getString("options");
				String plus = rs.getString("plus");
				String detail_image = rs.getString("detail_image");
				
				list.add(new Detail_Vo(idx,review,discount,sell_price,normal_price,sales,price_per_100,calories,protein,sodium,carbohydrate,fat,image,name,each,delivery,benefit,components,notice,options,plus,detail_image));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

public ArrayList<Detail_Vo> getgoodsdetail(int index){
	
	ArrayList<Detail_Vo> list = new ArrayList<Detail_Vo>();
	Connection conn = null;
	try {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
		String id ="ranking_v1";
		String pw = "12345";
		
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		
		String sql = "select * from goods where idx = ?"; 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, index);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			
			int idx = rs.getInt("idx");
			double review = rs.getDouble("review");
			int discount = rs.getInt("discount");
			int sell_price = rs.getInt("sell_price");
			int normal_price = rs.getInt("normal_price");
			int sales = rs.getInt("sales");
			int price_per_100 = rs.getInt("price_per_100");
			int calories = rs.getInt("calories");
			int protein = rs.getInt("protein");
			int sodium = rs.getInt("sodium");
			int carbohydrate = rs.getInt("carbohydrate");
			int fat = rs.getInt("fat");
			String image = rs.getString("image");
			String name = rs.getString("name");
			String each = rs.getString("each");
			String delivery = rs.getString("delivery");
			String benefit = rs.getString("benefit");
			String components = rs.getString("components");
			String notice = rs.getString("notice");
			String options = rs.getString("options");
			String plus = rs.getString("plus");
			String detail_image = rs.getString("detail_image");
			
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return list;
}
	
	
}
