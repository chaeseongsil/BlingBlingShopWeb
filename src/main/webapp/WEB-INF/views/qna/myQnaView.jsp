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
                        <p>NOTICE</p>
                    </div>
                    <div class="boardViewWrap">
                            <div class="board_view">
                                <div class="title" id="boardTitle">
                                    ${myQna.myQnaTitle }
                                </div>
                                <div class="info">
                                    <dl>
                                        <dt>번호</dt>
                                        <dd id="boardNum">${myQna.myQnaNo }</dd>
                                    </dl>
                                    <dl>
                                        <dt>글쓴이</dt>
                                        <dd>${myQna.myQnaWriter }</dd>
                                    </dl>
                                    <dl>
                                        <dt>작성일</dt>
                                        <dd id="boardDate">${myQna.myQnaDate }</dd>
                                    </dl>
                                    <dl>
                                        <dt>조회</dt>
                                        <dd id="boardCount">${myQna.viewCount }</dd>
                                    </dl>
                                </div>
                                <div class="cont" id="boardContent">
                                    ${myQna.myQnaContent }
                                </div>
                            </div>
                        <div class="bt_wrap" id="bt_btn">
                            <button onclick="goMyQna();">목록</button>
                            <button onclick="goModify();">수정하기</button>
                            <!--<a href="#">수정</a>-->
                        </div>
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
            function goModify(){
            	var myQnaNo = '${myQna.myQnaNo}';
				location.href = "/myQna/modify.do?myQnaNo="+myQnaNo;            	
            }
            function goMyQna(){
                history.back();
            }
            function alertLogin(){
	           	alert("로그인이 필요한 서비스입니다.");
            }
        </script>
    </body>
</html>