package ranking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Recent_Dao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public Recent_Dao() {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.1.10:1521:xe";
		String dbid = "ranking_v1";
		String dbpw = "12345";

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public RankingDto getrecentlist(String idx) {
		RankingDto rdto = null;
		String sql = "SELECT image, delivery, review, sales, name, sell_price FROM goods WHERE idx = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String image = rs.getString("image");
				String delivery = rs.getString("delivery");
				int review = rs.getInt("review");
				int sales = rs.getInt("sales");
				String name = rs.getString("name");
				int sell_price = rs.getInt("sell_price");
				rdto = new RankingDto(image, review, name, sales, sell_price, delivery);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rdto;
	}
}
