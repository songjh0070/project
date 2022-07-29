package ranking;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReviewDAO_top {
	
	public ArrayList<ReviewDTO> selectReview(){
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
			String id ="ranking_v1";
			String pw = "12345";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "select * from dt_review where idx <1000 and rownum <= 4";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String idx = rs.getString("idx");
				String Class = rs.getString("class");
				String point = rs.getString("point");
				String nickname =  rs.getString("nickname");
				String date_1 = rs.getString("date_1");
				String contents = rs.getString("contents");
				String img = rs.getString("img");
				String option_goods = rs.getString("option_goods");
				String as_nick = rs.getString("as_nick");
				String as_date = rs.getString("as_date");
				String as_contents = rs.getString("as_contents");
				String img2 = rs.getString("img2");
				
				list.add(new ReviewDTO(idx, Class, point, nickname, date_1, contents, img, option_goods, as_nick, as_date, as_contents,img2 ));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<ReviewDTO> CountReview(){
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		ArrayList<ReviewDTO> c_list = new ArrayList<ReviewDTO>();
		
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
			String id ="ranking_v1";
			String pw = "12345";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "select count(idx) from dt_review";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			int count = 0;
			
			while(rs.next()) {
				String idx = rs.getString("idx");
				String Class = rs.getString("class");
				String point = rs.getString("point");
				String nickname =  rs.getString("nickname");
				String date_1 = rs.getString("date_1");
				String contents = rs.getString("contents");
				String img = rs.getString("img");
				String option_goods = rs.getString("option_goods");
				String as_nick = rs.getString("as_nick");
				String as_date = rs.getString("as_date");
				String as_contents = rs.getString("as_contents");
				String img2 = rs.getString("img2");
				count += 1;
				
				c_list.add(new ReviewDTO(count));
				list.add(new ReviewDTO(idx, Class, point, nickname, date_1, contents, img, option_goods, as_nick, as_date, as_contents,img2));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return c_list;
	}
	
	public ArrayList<ReviewDTO> Review_all(){
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
			String id ="ranking_v1";
			String pw = "12345";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "select * from dt_review where idx<=5 and rownum <=5";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String idx = rs.getString("idx");
				String Class = rs.getString("class");
				String point = rs.getString("point");
				String nickname =  rs.getString("nickname");
				String date_1 = rs.getString("date_1");
				String contents = rs.getString("contents");
				String img = rs.getString("img");
				String option_goods = rs.getString("option_goods");
				String as_nick = rs.getString("as_nick");
				String as_date = rs.getString("as_date");
				String as_contents = rs.getString("as_contents");
				String img2 = rs.getString("img2");
				
				list.add(new ReviewDTO(idx, Class, point, nickname, date_1, contents, img, option_goods, as_nick, as_date, as_contents,img2 ));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<ReviewDTO> Review_all_2(){
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
			String id ="ranking_v1";
			String pw = "12345";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "select * from (select * from dt_review order by idx asc) where idx > 5 and idx <11";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String idx = rs.getString("idx");
				String Class = rs.getString("class");
				String point = rs.getString("point");
				String nickname =  rs.getString("nickname");
				String date_1 = rs.getString("date_1");
				String contents = rs.getString("contents");
				String img = rs.getString("img");
				String option_goods = rs.getString("option_goods");
				String as_nick = rs.getString("as_nick");
				String as_date = rs.getString("as_date");
				String as_contents = rs.getString("as_contents");
				String img2 = rs.getString("img2");
				
				list.add(new ReviewDTO(idx, Class, point, nickname, date_1, contents, img, option_goods, as_nick, as_date, as_contents,img2 ));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
}
