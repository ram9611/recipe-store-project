package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.ConnectionRecipe;
import vo.RecipeMagazineItemVo;
import vo.RecipeMagazineVo;

public class RecipeMagazineBoardDao {
	
	public int getMagazineRecipeTotalCnt(int magazineID) {

		ConnectionRecipe.connectionRecipe();
		String sql="select count(title) as cnt FROM RECIPE where (magazine_id = ? AND DELETEDPOST != 1 AND DELETEDACCOUNT != 1 AND complete = 1)";
		
		int cnt = 0;
		try {
			PreparedStatement pstmt = ConnectionRecipe.getConnection().prepareStatement(sql);
			pstmt.setInt(1, magazineID);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt("cnt");
			}
			rs.close();
			pstmt.close();
			ConnectionRecipe.disConnectionRecipe();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public String getMagazineNameByID(int magazineID) {
		String sql="select name FROM Magazine WHERE magazine_id = ?";
		
		String magazineName = "매거진";
		try {
			PreparedStatement pstmt = ConnectionRecipe.getConnection().prepareStatement(sql);
			pstmt.setInt(1, magazineID);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				magazineName = rs.getString("name");
			}
			rs.close();
			pstmt.close();
			ConnectionRecipe.disConnectionRecipe();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return magazineName;
	}
	
	public int getMagazineItemLastPageNum(int magazineID) {
		int cnt = getMagazineRecipeTotalCnt(magazineID);
		
		if(cnt%20==0) {
			return cnt/20;
		}
		return cnt/20 + 1;
	}
	
	public ArrayList<RecipeMagazineVo> getAllMagazineList() {
		ArrayList<RecipeMagazineVo> magazineList = new ArrayList<RecipeMagazineVo>();

		ConnectionRecipe.connectionRecipe();
		String sql="select magazine_id, name, image FROM Magazine WHERE magazine_id != 0";
		try {
			PreparedStatement pstmt = ConnectionRecipe.getConnection().prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int magazineID = rs.getInt("magazine_id");
				String magazineName = rs.getString("name");
				String magazineImage = rs.getString("image");
				magazineList.add(new RecipeMagazineVo(magazineID, magazineName, magazineImage));
			}
			rs.close();
			pstmt.close();
			ConnectionRecipe.disConnectionRecipe();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return magazineList;
	}
	
	public ArrayList<RecipeMagazineItemVo> getAllRecipeListByMID(int magazineID, int pageNum) {
		int endRnum = pageNum * 20;
		int startRnum = endRnum - 19;
		ArrayList<RecipeMagazineItemVo> magazineItemList = new ArrayList<RecipeMagazineItemVo>();

		ConnectionRecipe.connectionRecipe();
		
		String sql="SELECT t2.* FROM\r\n" + 
				"( SELECT rownum rnum, t.* FROM(\r\n" + 
				"SELECT r.THUMBNAIL AS thumbnail, r.recipe_id AS recipe_id, r.title AS title, count(rhd.hit_date) as HITCOUNT\r\n" + 
				"FROM RECIPE r join RECIPE_HIT_DATE rhd on (r.recipe_id = rhd.recipe_id)\r\n" + 
				"where (r.magazine_id = ? AND r.DELETEDPOST != 1 AND r.DELETEDACCOUNT != 1 AND r.complete = 1)\r\n" + 
				"group by r.recipe_id, r.THUMBNAIL, r.title\r\n" + 
				"ORDER BY count(rhd.hit_date) DESC)\r\n" + 
				"t)t2 WHERE (t2.rnum >= ? AND t2.rnum<= ?)";
		try {
			PreparedStatement pstmt = ConnectionRecipe.getConnection().prepareStatement(sql);
			pstmt.setInt(1, magazineID);
			pstmt.setInt(2, startRnum);
			pstmt.setInt(3, endRnum);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String title = rs.getString("TITLE");
				String thumbnail = rs.getString("THUMBNAIL");
				int recipeID = rs.getInt("recipe_id");
				magazineItemList.add(new RecipeMagazineItemVo(title, thumbnail, recipeID));
			}
			pstmt.close();
			rs.close();
			ConnectionRecipe.disConnectionRecipe();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return magazineItemList;
	}

}
