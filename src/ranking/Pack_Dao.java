package ranking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Pack_Dao {
	
	public ArrayList<PackVo> selectPack() {
		ArrayList<PackVo> list = new ArrayList<PackVo>();
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
			String id ="ranking_v1";
			String pw = "12345";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "select * from one_pack";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String image = rs.getString("image");
				String name = rs.getString("name");
				int rating = rs.getInt("rating_point");
				int review = rs.getInt("review_count");
				int discount = rs.getInt("discount");
				int sell = rs.getInt("sell_price");
				list.add(new PackVo(idx, rating, review, discount, sell, image, name));
			}//while
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
}
