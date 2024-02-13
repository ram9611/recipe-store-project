package action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import dao.RecipeRefrigeratorDao;
import vo.RecipeRefrigeratorVo;

public class RecipeRefrigeratorAddIngrediAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
		RecipeRefrigeratorDao refrigeratorDao = new RecipeRefrigeratorDao();
		// 받은 데이터를 읽어옴
		PrintWriter out = response.getWriter();
		JSONObject resultJSON = new JSONObject();
		
		
		int pageNum = 1;
		/* 무한 스크롤 
		 if(request.getParameter("page_num")!=n) { pageNum =
		 Integer.parseInt(request.getParameter("page_num")); }
		 */
		
		String loginId = (String)request.getParameter("loginId");
		String selectedIngrediOptions = (String)request.getParameter("selected_ingredi_options");
		String [] ingrediOptions = selectedIngrediOptions.split(" / ");
 		System.out.println("loginId : " +loginId);
		System.out.println("selectedIngrediOptions : " + selectedIngrediOptions);
		int ingrediID = 0;
		ArrayList<RecipeRefrigeratorVo> resultArrayList = new ArrayList<RecipeRefrigeratorVo>();
		ArrayList<String> ingredeImgArrayList = new ArrayList<String>();
        if (selectedIngrediOptions != null) {
            for (String ingredi : ingrediOptions) {
                try {
                	ingrediID = Integer.parseInt(ingredi);
                	System.out.println(ingrediID);
                	//refrigeratorDao.insertRefrigerator(loginId, ingrediID);
                	
                } catch (NumberFormatException e) {
                    // 변환 실패 시 예외 처리
                    System.err.println("Failed to convert option to numeric value: " + ingredi);
                }
            }
            resultArrayList = refrigeratorDao.searchRecipeRefrigerator(loginId, pageNum);
            ingredeImgArrayList = refrigeratorDao.getIngredeImageByID(loginId);
        }
        // 여기에서 원하는 응답을 생성
		boolean result = false;
		if(resultArrayList!=null && resultArrayList.size()!=0) {
			result = true;
		}
		if(result) {
		 	JSONArray jArray = new JSONArray();
	 		for (int i = 0; i < resultArrayList.size(); i++) {
		 		JSONObject sObject = new JSONObject();
		 		sObject.put("recipeID", resultArrayList.get(i).getRecipeID());
		 		sObject.put("thumbnail", resultArrayList.get(i).getThumbnail());
		 		sObject.put("title", resultArrayList.get(i).getTitle());
		 		sObject.put("arrForHave", resultArrayList.get(i).getHaveIngredeNameList());
		 		sObject.put("haveIngrediIDlist", resultArrayList.get(i).getHaveIngrediIDlist());
		 		sObject.put("arrForNot", resultArrayList.get(i).getNotHaveIngrediIDlist());
		 		sObject.put("notHaveIngrediIDlist", resultArrayList.get(i).getNotHaveIngrediIDlist());
		 		sObject.put("ingredeImgArrayList", ingredeImgArrayList);
		 		jArray.add(sObject);
 			}
	 		out.print(jArray);
	 		out.flush();
			out.close();
	 		//resultJSON.put("resultArrayList", jArray);
	 		//resultJSON.put("ingredeImgArrayList", ingredeImgArrayList);
		} else {
			resultJSON.put("result", "fail");
			out.println(resultJSON);
			out.flush();
			out.close();
		}
	}
}
