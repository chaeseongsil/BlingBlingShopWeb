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
        <link rel="stylesheet" href="/resources/css/myqna.css">
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
                    <div class="board-title">
                        <p>문의하기</p>
                    </div>
                    <div class="boardWriteWrap">
                        <form action="/myQna/modify.do?myQnaNo=${myQna.myQnaNo }" method="post">
                        	<div class="boardWrite">
	                            <div class="title">
	                                <dl>
	                                    <dt>제목</dt>
	                                    <dd>
	                                        <!-- <input type="text" placeholder="제목을 입력하세요."> -->
	                                        <select name="qnaList" id="qna-list">
	                                            <option value="[배송 문의]" <c:if test="${myQna.myQnaTitle eq '[배송문의]'}">selected</c:if>>[배송 문의]</option>
	                                            <option value="[교환/환불 문의]"  <c:if test="${myQna.myQnaTitle eq '[교환/환불 문의]'}">selected</c:if>>[교환/환불 문의]</option>
	                                            <option value="[상품 문의]" <c:if test="${myQna.myQnaTitle eq '[상품 문의]'}">selected</c:if>>[상품 문의]</option>
	                                            <option value="[재입고 문의]" <c:if test="${myQna.myQnaTitle eq '[재입고 문의]'}">selected</c:if>>[재입고 문의]</option>
	                                            <option value="[기타 문의]" <c:if test="${myQna.myQnaTitle eq '[기타 문의]'}">selected</c:if>>[기타 문의]</option>
	                                        </select>
	                                    </dd>
	                                </dl>
	                            </div>
	                            <div class="info">
	                                <dl>
	                                    <dt>글쓴이</dt>
	                                    <dd><input name="writer" type="text" value="${myQna.myQnaWriter }" readonly></dd>
	                                </dl>
	                                <dl>
	                                    <dt>비밀번호</dt>
	                                    <dd><input name="password" type="password" value="${myQna.myQnaPw }"></dd>
	                                </dl>
	                            </div>
	                            <div class="cont">
	                                <textarea name="content" >${myQna.myQnaContent }</textarea>
	                            </div>
	                        </div>
	                        <div class="bt_wrap" id="bt_btn">
	                            <button type="button" onclick="goBack();">취소</button>
	                            <button>등록</button>
	                        </div>
                        </form>
	                </div>
                </div>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        <script>
            var logout = document.querySelector("#logoutBtn");
            logout.addEventListener("click", () => {
                var isLogout = confirm("정말 로그아웃 하시겠습니까?");
                if(isLogout == true){
                    alert("정상적으로 로그아웃되었습니다.");
                    location.href="/member/logout.do";
                }
            });
            /* const urlParams = new URLSearchParams(window.location.search);
            const noticeNum = urlParams.get('num');
            const noticeTitle = urlParams.get('title');
            const noticeDate = urlParams.get('date');
            const noticeCount = urlParams.get('count');
            document.querySelector("#boardTitle").innerText += "[" + noticeTitle + "]";
            document.querySelector("#boardNum").innerText = noticeNum;
            document.querySelector("#boardDate").innerText = noticeDate;
            document.querySelector("#boardCount").innerText = noticeCount;
            for(let i = 0; i < 6; i++){
                document.querySelector("#boardContent").innerHTML += noticeTitle +"<br>";
            } */
            /* function goMyQna(){
            	aleation.href="/myQna/list.do";
            } */
            function goBack(){
            	history.back();
            }
            function alertLogin(){
	           	alert("로그인이 필요한 서비스입니다.");
            }
        </script>
    </body>
</html>