package ranking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class RankingDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public RankingDao() {
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

	public ArrayList<RankingDto> getRankinglist() {
		ArrayList<RankingDto> list = new ArrayList<RankingDto>();
		String sql = "select image, name, review, sales, sell_price, delivery from (select idx, image, name, review, sales, sell_price, delivery from goods where sales is not null order by sales desc) where rownum <=5 order by idx desc";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				
				String image = rs.getString("image");
				String name = rs.getString("name");
				int review = rs.getInt("review");
				int sales = rs.getInt("sales");
				int sell_price = rs.getInt("sell_price");
				String delivery = rs.getString("delivery");
				list.add(new RankingDto(image, review, name, sales, sell_price, delivery));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
