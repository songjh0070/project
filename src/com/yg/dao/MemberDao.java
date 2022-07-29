package com.yg.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.yg.dto.MemberDto;

public class MemberDao {
	
	public boolean loginCheck(MemberDto member) throws SQLException{
		// member.getID()와 member.getPw()를 이용해서 로그인체크.
		
		Connection conn = DBConnection.getConnection();
		
		String sql = "select count(*) from simple_member where id=? and pw=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,  member.getId());
		pstmt.setInt(2, member.getPw());
		ResultSet rs = pstmt.executeQuery();
		
		int result = 0;
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
		// result : 1 ------> 로그인 성공 ( 0 --> 실패 )
		return result == 1;
	}
}
