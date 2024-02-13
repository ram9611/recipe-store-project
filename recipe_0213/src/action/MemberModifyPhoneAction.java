package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import dao.MemberDao;

public class MemberModifyPhoneAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인 유저 아이디 받기
		String loginId = (String)request.getSession().getAttribute("loginId");
		// 변경하고자 하는 휴대폰 받기
		String phone = request.getParameter("phone");
		// 변경 결과 받기
		boolean result = new MemberDao().modifyPhone(loginId, phone);
		// 변경 결과를 JSON객체로 반환
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		JSONObject obj = new JSONObject();
		
		obj.put("result", result);
		out.print(obj);
	}
}
