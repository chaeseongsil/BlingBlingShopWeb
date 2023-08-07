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
        <link rel="stylesheet" href="/resources/css/join.css">
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <div id="mainWrap">
                    <div id="mainTitle">
                        <p>JOIN</p>
                    </div>
                    <div id="mainForm">
                        <form id="join-form" action="/member/register.do" method="post">
                            <div class="join-form-div">
                                <p>ID *</p> 
                                <input type="text" name="userId" id="user-id" class="join-form-field" placeholder="영문 소문자/숫자 6~12자"required> 
                            </div>
                            <div class="join-form-div">
                                <p>PASSWORD *</p>
                                <input type="password" name="userPw" id="user-pw" class="join-form-field" placeholder="영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자" required>
                            </div>
                            <div class="join-form-div">
                                <p>PASSWORD CHECK *</p>
                                <input type="password" name="userPwCheck" id="user-pw-check" class="join-form-field" required>
                            </div>
                            <div class="join-form-div">
                                <p>NAME</p>
                                <input type="text" name="userName" id="user-name" class="join-form-field">
                            </div>
                            <div class="join-form-div">
                                <p>ADDRESS</p>
                                <div id="postBox">
                                    <input type="text" name="userPost" id="user-post" class="join-form-field" readonly/>
                                    <!-- <input type="button" value="우편번호" id="join-form-btn1" > -->
                                    <button id="join-form-btn1" onclick="execDaumPostcode()">우편번호</button>
                                </div>
                                <input type="text" name="userPostAddr1" id="user-post-addr1" placeholder="기본주소" class="join-form-field" readonly>
                                <input type="text" name="userPostAddr2" id="user-post-addr2" placeholder="상세주소" class="join-form-field">
                            </div>
                            <div class="join-form-div">
                                <p>MOBILE *</p>
                                <div id="phoneBox">
                                    <select name="tel1" id="user-tel1" class="join-form-field" required>
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                    &nbsp;-&nbsp; 
                                    <input type="tel" name="tel2" id="user-tel2" class="join-form-field" required>
                                </div>
                            </div>
                            <div class="join-form-div">
                                <p>EMAIL *</p>
                                <input type="email" name="userEmail" id="user-email" class="join-form-field" required>
                            </div>
                            <div class="join-form-agree">
                                <div class="agree">
                                    <input type="checkbox" name="serviceAgree" id="serviceAgree1" required>  
                                    <label for="serviceAgree1"> <b>[필수] 개인정보 수집 및 이용 동의</b></label>
                                    <a href="#">자세히 보기</a>
                                </div>
                                <div class="agree">
                                    <input type="checkbox" name="serviceAgree" id="serviceAgree2"> 
                                    <label for="serviceAgree2"> [선택] 마케팅 활용 및 광고성 정보 수신 동의</label>
                                    <a href="#">자세히 보기</a>
                                </div>
                            </div>
                            <div class="join-form-submit">
                                <input type="submit" value="CREATE ACCOUNT" id="join-form-signin" class="join-form-btn">
                            </div>
                        </form>
                    </div>
                </div>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
        <script>
            
         /*    const signinDone = document.querySelector("#join-form-signin");
            signinDone.addEventListener("click", function(event) {
                event.preventDefault();
	           	const result = '${msg}';
	           	const url = '${url}';
	           	alert(result);
	           	location.href = url;
            }); */
            function execDaumPostcode() {
                daum.postcode.load(function(){
                    new daum.Postcode({
                        oncomplete: function(data) {
                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                            document.querySelector("#user-post").value = data.zonecode;
                            document.querySelector("#user-post-addr1").value = data.roadAddress;
                            document.querySelector("#user-post-addr2").focus();
                        }
                    }).open();
                });
            }
            function alertLogin(){
	           	alert("로그인이 필요한 서비스입니다.");
            }
        </script>
    </body>
</html>