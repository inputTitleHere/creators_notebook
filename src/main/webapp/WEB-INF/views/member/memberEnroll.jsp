<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>창작자의 노트북</title>
<!-- import table -->
<!-- CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/themes.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/variables.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/top-navbar.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/index.css">
<script src="<%=request.getContextPath()%>/js/index.js"></script>
</head>
<body class="darktheme">

	<%@ include file="/WEB-INF/views/common/loginHeader.jsp"%>

	<div class="enroll-form">
		<div class="login-window-wrapper">
			<div class="login-window">
				<h1>:: 회원가입 ::</h1>
				<form action="<%=request.getContextPath()%>/member/enroll"
					method="post">
					<table>
						<tr>
							<td><input class="inputField" type="text" name="id" id="id"
								required> <span class="login-title">아이디</span></td>
						</tr>
						<tr>
							<td class="warningtext" colspan="2">아이디는 변경불가능합니다.</td>
						</tr>
            <tr>
							<td><input class="inputField" type="text" name="memberName" id="memberName"
								required> <span class="login-title">닉네임</span></td>
						</tr>
						<tr>
							<td class="warningtext" colspan="2">화면에 표시될 사용자의 닉네임입니다.</td>
						</tr>
						<tr>
							<td><input class="inputField" type="password" name="pwd"
								id="pwd" required> <span class="login-title">비밀번호</span>
							</td>
						</tr>
						<tr>
							<td class="warningtext" colspan="2">영문, 숫자, 특수문자를 1개씩 꼭 포함해주세요.</td>
						</tr>
            <tr>
							<td><input class="inputField" type="password" name="pwdCheck"
								id="pwdCheck" required> <span class="login-title">비밀번호 확인</span>
							</td>
						</tr>
						<tr>
							<td class="warningtext" colspan="2">위의 비밀번호와 동일하게 입력.</td>
						</tr>
						<tr>
							<td>
								<button class="button-default" type="submit" id="register">회원가입</button>
							</td>
						</tr>
						<tr class="lower-buttons">
							<td>
								<div class="button-flexbox">
									<button class="button-default" type="reset" id="login-cancel"
										onclick="location.href='<%= request.getContextPath()%>/'">취소</button>
								</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<!--login window-->
		</div>



		</form>
	</div>







</body>
</html>