package com.cnote.mvc.member.service;

import com.cnote.mvc.member.model.dao.MemberDao;
import com.cnote.mvc.member.model.dto.Member;
import java.sql.Connection;


import static com.cnote.mvc.common.JdbcTemplate.*;


public class MemberService {

	private MemberDao memberDao = new MemberDao();
	
	public Member findById(String memberId) {
		Connection conn = getConnection();
		Member member = memberDao.findById(conn, memberId);
		close(conn);
		return member;
	}
	
}
