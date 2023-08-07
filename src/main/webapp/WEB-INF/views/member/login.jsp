<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BlingBling : handcraft jewelry shop</title>
        <link rel="stylesheet" href="/resources/css/all.css">
        <link rel="stylesheet" href="/resources/css/footer.css">
        <link rel="stylesheet" href="/resources/css/header.css">
        <link rel="stylesheet" href="/resources/css/login.css">
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <div id="mainWrap">
                    <div id="mainTitle">
                        <p>LOGIN</p>
                    </div>
                    <div id="mainForm">
                        <form id="login-form" action="/member/login.do" method="post">
                            <p>ID</p> 
                            <input type="text" name="userId" id="user-id" class="login-form-field" required> 
                            <p>PASSWORD</p>
                            <input type="password" name="userPw" id="user-pw" class="login-form-field" required>
                            <input type="submit" value="LOGIN" id="login-form-submit" class="login-form-btn"> 
                            <input type="button" value="CREATE ACCOUNT" id="login-form-signin" class="login-form-btn" onclick="location.href='/member/register.do'">
                            <a href="/member/findId.do">FIND ID</a> /
                            <a href="/member/findPw.do">FIND Password</a>
                        </form>
                    </div>
                </div>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
		<script>
			function alertLogin(){
	           	alert("로그인이 필요한 서비스입니다.");
	        }
		</script>
    </body>
</html>