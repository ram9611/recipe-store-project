package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProfileDao;
import dao.RecipeBoardDao;
import dto.ProfileDto;
import dto.RecentRecipeDto;
import vo.RecipeLvVo;
import vo.RecipeManagerCategoryVo;

public class RecipeWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 세션에 로그인 아이디가 있다면 가져오기
		HttpSession session = request.getSession();
		String loginId = (String)session.getAttribute("loginId"); 

		if(loginId != null) {
			ProfileDao profileDao = new ProfileDao(); // 유저 프로필 메서드 관련 DAO
			ProfileDto myProfile = profileDao.getProfileById(loginId); // 로그인한 유저의 프로필 정보 저장
			request.setAttribute("myProfile", myProfile);
		}
		// 최근 본 레시피 가져오기
		Cookie[] cookies = request.getCookies();
		// 최근 본 레시피를 가진 쿠키만 저장하기 위한 리스트
		ArrayList<Cookie> recentRecipeCookies = new ArrayList<Cookie>();
		for(Cookie c : cookies) {
			if(c.getName().contains("recipeId")) {
				System.out.println("최근본레시피 아이디 : " + c.getValue());
				recentRecipeCookies.add(c);
			}
		}
		RecipeBoardDao rbDao = new RecipeBoardDao();
		ArrayList<RecentRecipeDto> recentRecipeList = new ArrayList<RecentRecipeDto>();
		if(recentRecipeCookies.size() != 0) {
			for(int i=recentRecipeCookies.size()-1; i>=0; i--) {
				System.out.println("최근본레시피 배열에 1개 삽입");
				int recentRecipeId = Integer.parseInt( recentRecipeCookies.get(i).getValue() );
				recentRecipeList.add(rbDao.getRecentRecipe(recentRecipeId));
			}
		}
		System.out.println("최근본레시피 개수 : " + recentRecipeCookies.size());
		request.setAttribute("recentRecipeList", recentRecipeList);
		
		ArrayList<RecipeManagerCategoryVo> categoryListWhat = RecipeBoardDao.getCategoryList("What");
		ArrayList<RecipeManagerCategoryVo> categoryListKind = RecipeBoardDao.getCategoryList("Kind");
		ArrayList<RecipeManagerCategoryVo> categoryListSituation = RecipeBoardDao.getCategoryList("Situation");
		ArrayList<RecipeLvVo> getLvList = RecipeBoardDao.getLvList();
		int newRecipeID = RecipeBoardDao.getNewRecipeID();
		//int newRecipeID = 7011933;
		request.setAttribute("categoryListWhat", categoryListWhat);
		request.setAttribute("categoryListKind", categoryListKind);
		request.setAttribute("categoryListSituation", categoryListSituation);
		request.setAttribute("getLvList", getLvList);
		request.setAttribute("newRecipeID", newRecipeID);
		request.getRequestDispatcher("Recipe_Write_Form_Page.jsp").forward(request, response);
	}
}
