package com.saem.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saem.action.Action;
import com.saem.dao.MemberDAO;
import com.saem.dto.MemberVO;
import com.saem.util.SHA256;
import com.saem.util.Script;

public class MemberLoginAction implements Action{

	private static String naming = "MemberLoginAction : ";
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "main.jsp";
		
		MemberVO member = new MemberVO();
		MemberDAO dao = new MemberDAO();
	
		String id = null;
		String password = null;
						
		if(request.getParameter("id") != null) {
			
			id = request.getParameter("id");
		}
		
		String salt = dao.select_salt(id);
		System.out.println(salt);
		
		if(request.getParameter("password") != null) {
			
			password = request.getParameter("password");
			//패스워드를 SHA256으로 해쉬하기.

			System.out.println("pw : " + password);
			password = SHA256.getEncrypt(password, salt);
			
		}
					
		member.setId(id);
		member.setPassword(password);
		member.setSalt(salt);
				
		int result = dao.login(member);
		
		if(result == 1) {
			
			HttpSession session = request.getSession();
			session.setAttribute("id", member.getId());
			Script.moving(response, "로그인이 되었습니다.", url);
			
		}else if(result == 2) {
			
			Script.moving(response, "비밀번호 오류");
			
		}else if(result == -1) {
			
			Script.moving(response, "DB오류");
		}
				
	}
}

