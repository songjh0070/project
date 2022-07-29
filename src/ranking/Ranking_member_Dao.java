package ranking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Ranking_member_Dao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public Ranking_member_Dao() {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbid = "ranking_v1";
		String dbpw = "12345";

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Ranking_member_Dto> getRanking_memberlist() {
		ArrayList<Ranking_member_Dto> list = new ArrayList<Ranking_member_Dto>();
		String sql = "select * from member";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String nick = rs.getString("nick");
				String p_number = rs.getString("p_number");
				String email = rs.getString("email");
				String birth = rs.getString("birth");
				String gender = rs.getString("gender");
				String consent = rs.getString("consent");
				String accumulative_amount = rs.getString("accumulative_amount");
				int m_rating = rs.getInt("m_rating");
				list.add(new Ranking_member_Dto(id, password, name, nick, p_number, email, birth, gender, consent,
						accumulative_amount, m_rating));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
