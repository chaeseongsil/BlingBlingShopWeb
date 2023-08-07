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
                        <p>나의 문의 내역</p>
                    </div>
                    <div class="boardListWrap">
                        <div class="boardList">
                            <div class="top">
                                <div class="num">번호</div>
                                <div class="title">제목</div>
                                <div class="writer">작성자</div>
                                <div class="date">작성일</div>
                                <div class="count">조회수</div>
                                <div class="check"><input type="checkbox" name="qnaCheck" id="allQnaCheck" onclick="allChk(this);"></div>
                            </div>
                            <c:forEach items="${requestScope.qList }" var="myQna">
                            	<div>
                                <div class="num">${myQna.myQnaNo }</div>
                                <div class="title">
                                    <a href="javascript:void(0)" onclick="goMyQnaDetail('${myQna.myQnaNo }','${myQna.myQnaPw}')">${myQna.myQnaTitle }</a>
                                    <c:if test="${myQna.myQnaPw ne null}">
	                                    <img src="https://cdn-icons-png.flaticon.com/512/481/481195.png" alt="">
                                    </c:if>
                                </div>
                                <div class="writer">${myQna.myQnaWriter }</div>
                                <div class="date">${String.valueOf(myQna.myQnaDate).substring(0,10) }</div>
                                <div class="count">${myQna.viewCount }</div>
                                <div class="check"><input type="checkbox" name="qnaCheck" id="qna-check" value="${myQna.myQnaNo }"></div>
                            </div>
                            </c:forEach>
                        </div>
                        <div id="boardButton" class="pageBtn">
                            <!-- <button class="prev-btn">
                                <img src="https://cdn-icons-png.flaticon.com/512/271/271220.png" alt="">
                            </button> -->
                            <div class="page-numbers">
                                <span class="page-number">${pageNavi }</span>
                            </div>
<!--                             <button class="next-btn">
                                <img src="https://cdn-icons-png.flaticon.com/512/87/87425.png" alt="">
                            </button> -->
                        </div>
                        <div class="bt_wrap">
                            <button onclick="deleteQna();">선택 삭제</button>
                            <button onclick="writePage();">글쓰기</button>
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
            function deleteQna() {
            	var chkObj = document.getElementsByName("qnaCheck");
            	var allChecked = false;
            	var memberId = '${sessionScope.memberId}'
            	for(var i = 0; i < chkObj.length; i++){
					if(chkObj[i].checked){
						allChecked = true;
					}            		
            	}
            	if(!allChecked){
            		alert("삭제할 글을 선택해주세요.");
            	}else {
	            	if(confirm("정말 삭제하시겠습니까?")){
		            	for(var i = 0; i < chkObj.length; i++){
		            		if(chkObj[i].checked){
		            			if(chkObj[i].value == "on"){
		            				i--;
		            				continue;
		            			}
		            			location.href="/myQna/delete.do?myQnaNo="+chkObj[i].value+"&memberId="+memberId;
		            		}
		            	}
	            	}
            	}
            }
            
            function writePage() {
                location.href="/myQna/write.do";
            }
            
            function goMyQnaDetail(myQnaNo, myQnaPw){
            	if(myQnaPw.trim().length !== 0){
            		if(prompt("비밀번호를 입력하세요.")=== myQnaPw){
            			location.href="/myQna/detail.do?myQnaNo="+myQnaNo;
            		}else {
            			alert("비밀번호 오류입니다.");
            		}
            	}else {
            		location.href="/myQna/detail.do?myQnaNo="+myQnaNo;
            	}
            }
            function allChk(obj){
            	var chkObj = document.getElementsByName("qnaCheck");
            	var rowCnt = chkObj.length;
            	var check = obj.checked;
            	if(check){
            		for(var i = 0; i <= rowCnt; i++){
            			chkObj[i].checked = true;
            		}
            	} else {
            		for(var i = 0; i < rowCnt; i++){
           				chkObj[i].checked = false;
            		}
            	}
            }
            function alertLogin(){
	           	alert("로그인이 필요한 서비스입니다.");
            }
        </script>
    </body>
</html>