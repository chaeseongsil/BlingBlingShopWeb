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
        <style>
            .login-form-btn {
                font-size : 15px;
                margin-top : 20px;
            }
        </style>
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <div id="mainWrap">
                    <div id="mainTitle">
                        <p>FIND Password</p>
                    </div>
                    <div id="mainForm">
                        <form id="login-form" action="/member/findPw.do" method="post">
                            <p>ID</p> 
                            <input type="text" name="userId" id="user-id" class="login-form-field" required> 
                            <p>NAME</p>
                            <input type="text" name="userName" id="user-name" class="login-form-field" required>
                            <p>E-MAIL</p>
                            <input type="email" name="userEmail" id="user-Email" class="login-form-field" required>
                            <input type="submit" value="GO" id="login-form-submit" class="login-form-btn"> 
                        </form>
                    </div>
                </div>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        <script>
            /* const uId = document.querySelector("#user-id").value;
            const uName = document.querySelector("#user-name").value;
            const uEmail = document.querySelector("#user-Email").value;
            let findPw = document.querySelector("#login-form");
            findPw.addEventListener("submit", (e) => {
                if(uId !== null && uName !== null && uEmail !== null){
                    alert("이메일로 임시 비밀번호가 발송되었습니다.\n로그인페이지로 이동합니다.");
                    location.href="/member/login.do";
                }else {
                    alert("빠짐없이 입력해주세요.");
                    return false;
                }
            }); */
            function alertLogin(){
	           	alert("로그인이 필요한 서비스입니다.");
            }
        </script>
    </body>
</html>