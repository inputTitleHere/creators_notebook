package com.cnote.mvc.member.model.dao;

import static com.cnote.mvc.common.JdbcTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Properties;

import com.cnote.mvc.member.model.dto.Member;
import com.cnote.mvc.member.model.dto.MemberRole;


public class MemberDao {

	private Properties prop = new Properties();
	
	public MemberDao() {
		String filename = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		System.out.println("filename @ MemberDao = "+filename);
		try {
			prop.load(new FileReader(filename));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public Member findById(Connection conn, String memberId) {
		PreparedStatement 	pstmt 	=null;
		ResultSet 			rset 	=null;
		Member 				member 	=null;
		String 				sql 	=prop.getProperty("findById");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			
			rset=pstmt.executeQuery();
			while(rset.next()) {
				memberId=rset.getString("member_id");
				String password = rset.getString("password");
				String memberName =rset.getString("member_name");
				MemberRole memberRole = MemberRole.valueOf(rset.getString("member_role"));
				String memberEmail = rset.getString("member_email");
				int uid = rset.getInt("uid");
				Timestamp enrollDate = rset.getTimestamp("enroll_date");
				
				member=new Member(memberId, password, memberName,memberRole, memberEmail, uid, enrollDate);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return member;
	} // END findById
	
}
