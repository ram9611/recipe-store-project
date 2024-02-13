<%@page import="dto.ChefDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<ChefDto> chefList = (ArrayList<ChefDto>)request.getAttribute("chefList");
	int pageNum = (Integer)request.getAttribute("pageNum");
	int startPageNum = (Integer)request.getAttribute("startPageNum");
	int endPageNum = (Integer)request.getAttribute("endPageNum");
	int lastPageNum = (Integer)request.getAttribute("lastPageNum");
	String searchWord = (String)request.getAttribute("searchWord");
	String term = (String)request.getAttribute("term");
	String loginId = (String)session.getAttribute("loginId");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<style>
		* {
			margin: 0;
			padding: 0;
		}
		body {
			margin: 100px auto;
		}
		img {
			width: 100px;
		}
		.fl {
			float: left;
		}
		.fr {
			float: right;
		}
		div.pagination {
			font-size: 20px;
		}
	</style>
</head>
<body>
	<div class="container">
		<h2>쉐프 목록</h2>
		<form action="ChefTest" method="get"><input type="text" name="searchWord"/></form>
		<script>
			function moveMain() {
				location.href = "ChefTest";
			}
			function moveLogin() {
				location.href = "ChefLogin.jsp";
			}
			function moveLogout() {
				location.href = "ChefLogout";
			}
		</script>
		<button class="main fr" onclick="moveMain();">메인페이지</button>
		<% if(loginId == null) { %>
			<button class="login fr" onclick="moveLogin();">로그인</button>
		<% } else { %>
			<button class="logout fr" onclick="moveLogout();">로그아웃</button>
		<% } %>
		<div style="clear:both"></div>
		<table class="table">
			<thead>
				<tr>
					<th>랭킹</th>
					<th>아이디</th>
					<th>닉네임</th>
					<th>프로필사진</th>
					<th>레시피개수</th>
					<th>레시피 좋아요수</th>
					<th>레시피 조회수</th>
					<th>팔로워 수</th>
					<th>나랑 팔로잉중임?</th>
				</tr>
			</thead>
			<tbody>
				<% for(ChefDto chefObj : chefList) { %>
					<%
						int rownum = chefObj.getRownum();
						String chefUid = chefObj.getChefUid();
						String chefNickname = chefObj.getChefNickname();
						String chefProfileImage = chefObj.getChefProfileImage(); 
						int recipeQtyOfChef = chefObj.getRecipeQtyOfChef();
						int totalRecipeLikesOfChef = chefObj.getTotalRecipeLikesOfChef();
						int totalRecipeHitsOfChef = chefObj.getTotalRecipeHitsOfChef();
						int followerQtyOfChef = chefObj.getFollowerQtyOfChef();
						boolean checkFollow = chefObj.isCheckFollow();
					%>
					<tr>
						<td><%=rownum%></td>
						<td><%=chefUid%></td>
						<td><%=chefNickname%></td>
						<td><img src="<%=chefProfileImage%>"/></td>
						<td><%=recipeQtyOfChef%></td>
						<td><%=totalRecipeLikesOfChef%></td>
						<td><%=totalRecipeHitsOfChef%></td>
						<td><%=followerQtyOfChef%></td>
						<td>
							<% if(loginId != null) { %>
								<% if(!loginId.equals(chefUid)) { %>
									<% if(checkFollow) { %>
										<%="맞음"%>
									<% } else { %>
										<%="아님"%>
									<% } %>
								<% } %>
							<% } else { %>
								<%="아님"%>
							<% } %>
						</td>
					</tr>
				<% } %>
			</tbody>
		</table>
		<% if(term == null) { %>
			<% if(searchWord == null) { %>
				<div class="pagination">
					<% if(pageNum > 1) { %>
						<a href="ChefTest?page=<%=pageNum-1%>">&lt;</a>
					<% } %>
					<% for(int i=startPageNum; i<=endPageNum; i++) { %>
						<% if(pageNum == lastPageNum) break; %>
						<% if(i == pageNum) { %>
							<span><%=i%></span>
						<% } else { %>
							<a href="ChefTest?page=<%=i%>"><%=i%></a>
						<% } %>
					<% } %>
					<% if(pageNum < lastPageNum) { %>
						<a href="ChefTest?page=<%=pageNum+1%>">&gt;</a>
					<% } %>
				</div>
			<% } else { %>
				<div class="pagination">
					<% if(pageNum > 1) { %>
						<a href="ChefTest?searchWord=<%=searchWord%>&page=<%=pageNum-1%>">&lt;</a>
					<% } %>
					<% for(int i=startPageNum; i<=endPageNum; i++) { %>
						<% if(pageNum == lastPageNum) break; %>
						<% if(i == pageNum) { %>
							<span><%=i%></span>
						<% } else { %>
							<a href="ChefTest?searchWord=<%=searchWord%>&page=<%=i%>"><%=i%></a>
						<% } %>
					<% } %>
					<% if(pageNum < lastPageNum) { %>
						<a href="ChefTest?searchWord=<%=searchWord%>&page=<%=pageNum+1%>">&gt;</a>
					<% } %>
				</div>
			<% } %>
		<% } else { %>
			<% if(searchWord == null) { %>
				<div class="pagination">
					<% if(pageNum > 1) { %>
						<a href="ChefTest?term=<%=term%>&page=<%=pageNum-1%>">&lt;</a>
					<% } %>
					<% for(int i=startPageNum; i<=endPageNum; i++) { %>
						<% if(pageNum == lastPageNum) break; %>
						<% if(i == pageNum) { %>
							<span><%=i%></span>
						<% } else { %>
							<a href="ChefTest?term=<%=term%>&page=<%=i%>"><%=i%></a>
						<% } %>
					<% } %>
					<% if(pageNum < lastPageNum) { %>
						<a href="ChefTest?term=<%=term%>&page=<%=pageNum+1%>">&gt;</a>
					<% } %>
				</div>
			<% } else { %>
				<div class="pagination">
					<% if(pageNum > 1) { %>
						<a href="ChefTest?searchWord=<%=searchWord%>&term=<%=term%>&page=<%=pageNum-1%>">&lt;</a>
					<% } %>
					<% for(int i=startPageNum; i<=endPageNum; i++) { %>
						<% if(pageNum == lastPageNum) break; %>
						<% if(i == pageNum) { %>
							<span><%=i%></span>
						<% } else { %>
							<a href="ChefTest?searchWord=<%=searchWord%>&term=<%=term%>&page=<%=i%>"><%=i%></a>
						<% } %>
					<% } %>
					<% if(pageNum < lastPageNum) { %>
						<a href="ChefTest?searchWord=<%=searchWord%>&term=<%=term%>&page=<%=pageNum+1%>">&gt;</a>
					<% } %>
				</div>
			<% } %>
		<% } %>
	</div>
</body>
</html>