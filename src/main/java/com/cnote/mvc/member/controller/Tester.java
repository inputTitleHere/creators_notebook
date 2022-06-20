package com.cnote.mvc.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/testgrad/te")
public class Tester extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Is Working");
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().append("Database 연결테스트 - 서버콘솔을 확인하세요");
		response.getWriter().append("VSCode 끄고 해봅ㄴ디ㅏ.");
	}
	
}
