<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] recipeIdArr = request.getParameterValues("followrecipe_checkbox");
	HashSet<Integer> recipeIds = new HashSet<Integer>();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% for(String str : recipeIdArr) {
		recipeIds.add(Integer.parseInt(str));
	} %>
	<%
		for(int recipeId : recipeIds) {
			out.print(recipeId + "<br/>");
		}
	%>
</body>
</html>