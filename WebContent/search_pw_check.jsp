<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" type="text/css" href="styles/login_page_css/sign_up.css?ver=3">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="main" style="padding:50px 0 300px 0;">
	<form method="post" action="search_pw_check_Action.jsp">
		<div class="entire" align="center">
			<div class="box_search_id" style="height:390px;">
				<div class="box_in"> 
					<p align="center" style="font-size:25px;">본인 인증</p>
					<p class="sign_up_ip">아이디<font color="red">*</font></p>
					<input class = "login_ip" type="text" name="userId" placeholder="ID">
					<p class="sign_up_ip">이메일<font color="red">*</font></p>
					<input class = "login_ip" type="email" name="userEmail" placeholder="e-mail">
					<input class="sign_up_sub" type="submit" value="확인">
					<div align="center" style="margin:-15px 0 0 0;">
						<input class="sign_up_exist" type="button" value="비밀번호를 기억하시나요? 홈으로 돌아가기" onclick="location.href='login_main.jsp'">
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>