package com.saem.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.saem.action.Action;
import com.saem.util.Script;

public class MemberLogoutAction implements Action{
	private static String naming = "MemberLogoutAction : ";
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "main.jsp";
		
		HttpSession session = request.getSession();
		session.invalidate();
				
		Script.moving(response, "로그아웃이 되었습니다.", url);
		
	}

}