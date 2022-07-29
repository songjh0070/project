package ranking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.websocket.Session;

public class GoodsDao {
	
	public ArrayList<GoodsDto> selectGoods_instant(){
		ArrayList<GoodsDto> list = new ArrayList<GoodsDto>();
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
			String id ="ranking_v1";
			String pw = "12345";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "select * from goods where idx between 1001 and 1016";
			PreparedStatement pstmt = conn.prepareStatement(sql);
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
				
				list.add(new GoodsDto(idx,review,discount,sell_price,normal_price,sales,price_per_100,calories,protein,sodium,carbohydrate,fat, image, name, each, delivery, benefit, components, notice, options, plus, detail_image));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<GoodsDto> Goods_detail(int index){
		
		ArrayList<GoodsDto> list = new ArrayList<GoodsDto>();
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
				
				list.add(new GoodsDto(idx,review,discount,sell_price,normal_price,sales,price_per_100,calories,protein,sodium,carbohydrate,fat, image, name, each, delivery, benefit, components, notice, options, plus, detail_image));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<GoodsDto> selectGoods_salad(){
		ArrayList<GoodsDto> list = new ArrayList<GoodsDto>();
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
			String id ="ranking_v1";
			String pw = "12345";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "select * from goods where idx between 3000 and 3015";
			PreparedStatement pstmt = conn.prepareStatement(sql);
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
				
				list.add(new GoodsDto(idx,review,discount,sell_price,normal_price,sales,price_per_100,calories,protein,sodium,carbohydrate,fat, image, name, each, delivery, benefit, components, notice, options, plus, detail_image));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<GoodsDto> selectGoods_img(int index){
		ArrayList<GoodsDto> list = new ArrayList<GoodsDto>();
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
			String id ="ranking_v1";
			String pw = "12345";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "select * from goods where idx ?";
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
				
				list.add(new GoodsDto(idx,review,discount,sell_price,normal_price,sales,price_per_100,calories,protein,sodium,carbohydrate,fat, image, name, each, delivery, benefit, components, notice, options, plus, detail_image));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public String Goods_img(int index){
		Connection conn = null;
		
		String image = null;
		
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
				
				image = rs.getString("detail_image");
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return image;
		
	}
	
	public String Goods_Option(int index){
		Connection conn = null;
		
		String image = null;
		
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
				
				String options = rs.getString("options");
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return image;
		
	}
}




