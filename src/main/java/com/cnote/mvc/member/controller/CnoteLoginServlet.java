package com.cnote.mvc.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cnote.mvc.member.model.dto.Member;
import com.cnote.mvc.member.service.MemberService;

/**
 * Servlet implementation class MemberLoginServlet
 */

@WebServlet("/login")
public class CnoteLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private MemberService memberService = new MemberService();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain; charset=utf-8");
		response.getWriter().append("Database 연결테스트 - 서버콘솔을 확인하세요");
		
		
	}
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String memberId = request.getParameter("id");
		String memberPwd = request.getParameter("pwd");
		
		Member member = memberService.findById(memberId);
		System.out.println("member@MemberLoginServlet = "+member);
		
		
		HttpSession session = request.getSession();
		
		if(member!=null && memberPwd.equals(member.getPassword())) {
			// 로그인 성공
			session.setAttribute("loginMember", member);
		}else {
			// 로그인 실패 - ID not exist OR Password wrong
			session.setAttribute("msg",	"아이디 또는 비밀번호가 일치하지 않습니다.");
		}
		
		response.setContentType("text/plain; charset=utf-8");
		response.getWriter().append("연결테스트 - 서버콘솔을 확인하세요");
		
		
		
	}

}
