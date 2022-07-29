package ranking;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReviewDAO {
	
	public ArrayList<ReviewDTO> selectReview(ReviewDTO a){
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
			String id ="ranking_v1";
			String pw = "12345";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "select * from dt_review";
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
