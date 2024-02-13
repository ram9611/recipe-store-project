package test;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.ConnectionRecipe;

public class selectOptionSumTest {
	public static void main(String[] args) {
		int result = -1;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT\r\n" + 
					"sum(op1.price*ol.op1_qty) as amount\r\n" + 
					"FROM\r\n" + 
					"orderlist ol , product_op1 op1\r\n" + 
					"WHERE\r\n" + 
					"ol.order_id = ? AND\r\n" + 
					"op1.op1_num = ol.op1_num ";
		int orderId = 21217926;
		try {
			pstmt = ConnectionRecipe.getConnection().prepareStatement(sql);
			pstmt.setInt(1, orderId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(NullPointerException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(rs!=null)rs.close();
				ConnectionRecipe.disConnectionRecipe();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println(result);
	}
}
