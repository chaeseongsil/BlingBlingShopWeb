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
        <link rel="stylesheet" href="/resources/css/myOrderChange.css">
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
                        <p>교환/반품 신청</p>
                    </div>
                    <div class="boardWriteWrap">
                        <div class="boardWrite">
                            <div class="title">
                                <dl>
                                    <dt>
                                        선택  
                                    </dt>
                                    <dd>
                                        <input type="radio" name="case" id="caseChange">
                                        <label for="caseChange">교환</label>
                                        <input type="radio" name="case" id="caseReturn">
                                        <label for="caseReturn">반품</label>
                                        
                                    </dd>
                                </dl>
                            </div>
                            <div class="info">
                                <dl>
                                    <dt>사유</dt>
                                    <dd>
                                        <select name="caseList" id="case-list">
                                            <option value="none" selected disabled hidden> 교환/반품 사유을 선택하세요.</option>
                                            <option value="simple">단순 변심</option>
                                            <option value="sizeError">사이즈 미스</option>
                                            <option value="defect">불량/하자</option>
                                            <option value="deliveryError">오배송 및 지연</option>
                                        </select>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>파일첨부</dt>
                                    <dd>
                                        <input type="file" name="orderFile" id="orderChangeFile" multiple>
                                    </dd>
                                </dl>
                            </div>
                            <div class="cont">
                                <textarea placeholder="상세 사유를 입력하세요."></textarea>
                            </div>
                        </div>
                        <div class="bt_wrap" id="bt_btn">
                            <button onclick="goBack();">등록</button>
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
            const urlParams = new URLSearchParams(window.location.search);
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
            }
            function goBack(){
                alert("교환/반품 신청이 완료되었습니다.");
                history.back();
            }
            function alertLogin(){
	           	alert("로그인이 필요한 서비스입니다.");
            }
        </script>
    </body>
</html>