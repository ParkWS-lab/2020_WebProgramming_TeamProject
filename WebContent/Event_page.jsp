<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.webprogramming.project.Event_DTO"%>
<%@ page import="java.util.ArrayList" %>
<jsp:useBean id="EDAO" class = "com.webprogramming.project.EventDAO"/>
<!DOCTYPE html>
<html>
<%
	String pageNum="1";
	if(request.getParameter("pageNum")!=null){
		pageNum = request.getParameter("pageNum");
	}
	try{
		Integer.parseInt(pageNum);
	}catch (Exception e){
		session.setAttribute("meesageType","오류 메시지");
		session.setAttribute("meesageContent","페이지 번호 오류");
		response.sendRedirect("Event_page.jsp");
		return;
	}
	ArrayList<Event_DTO> list = EDAO.getList(pageNum);
%>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<link rel="stylesheet" type="text/css" href="styles/Event_page.css?v=5">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="main" >
	<div class="main_head" align="center">
		<div class="main_font">
			<p style="font-size:60px;color:#000000;">이벤트</p>
			<hr style="margin:40px 0 40px 0;background-color:black">
			<p style="font-size:19px;color:#000000;">호서대를 선도하는<br><br> H.T.C에서 준비한 이벤트에 참여하세요.</p>
		</div>
	</div>
	<div class="main_body" align="center">
			<table class="body_table" >
				<thead>
					<tr>
						<th>번호</th>
						<th>분류</th>
						<th>제목</th>
						<th>등록인</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<%						
						for(int i = 0 ; i < list.size();i++){
					%>
					<tr onclick="location.href='Event_detail.jsp?eventNum=<%
					int n = (Integer.parseInt(pageNum)-1)*10;
					out.print(i+n+1);
					%>'">
						<td><% out.println(list.get(i).getEid());%></td>
						<td><% out.println(list.get(i).getEtype());%></td>
						<td><% out.println(list.get(i).getEtitle());%></td>
						<td><% out.println(list.get(i).getEdate());%></td>
						<td><% out.println(list.get(i).getEview());%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<br>
			<%
				for(int j=0;j<EDAO.maxPage()+1;j++){
			%>
				<a href="Event_page.jsp?pageNum=<%out.print(j+1);%>" style="margin:8px;">[<%out.print(j+1);%>]</a>
			<%
				}
			%>
		</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>