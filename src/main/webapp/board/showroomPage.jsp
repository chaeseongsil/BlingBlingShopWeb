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
        <link rel="stylesheet" href="/resources/css/showroomPage.css">
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <div id="mainWrap">
                    <div id="showRTitle">
                        <p>SHOWROOM</p>
                    </div>
                    <div id="showRDesc">
                        <div class="showRInfo">
                            <div class="showTitle">
                                <span>GANGNAM STORE</span>
                            </div>
                            <div class="showRImg">
                                <img src="/resources/images/gangnamshowroom.png" alt="강남쇼룸 지도">
                            </div>
                            <div class="showRAddr">
                                <span class="title-ko">블링블링 강남 플래그쉽 스토어</span> <br><br>
                                <span>서울 강남구 테헤란로14길 6</span> <br>
                                <span>WED - SUN 12:00 ~ 20:00</span> <br>
                                <span>02-2987-3456</span>
                            </div>
                        </div>
                        <div class="showRInfo">
                            <div class="showTitle">
                                <span>JONGRO STORE</span>
                            </div>
                            <div class="showRImg">
                                <img src="/resources/images/euljiroshowroom.png" alt="종로쇼룸 지도">
                            </div>
                            <div class="showRAddr">
                                <span class="title-ko">블링블링 종로 플래그쉽 스토어</span> <br><br>
                                <span>서울 중구 남대문로 120</span> <br>
                                <span>WED - SUN 12:00 ~ 20:00</span> <br>
                                <span>02-2987-6543</span>
                            </div>
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
            function alertLogin(){
	           	alert("로그인이 필요한 서비스입니다.");
            }
        </script>
    </body>
</html>