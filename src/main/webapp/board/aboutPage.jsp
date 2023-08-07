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
        <link rel="stylesheet" href="/resources/css/aboutPage.css">
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <div id="mainWrap">
                    <div id="mainTitle">
                        <p>BRAND STORY</p>
                    </div>
                    <div id="mainDesc">
                        <div id="mainDesc-wrap">
                            <div id="mainDesc-img">
                                <img src="/resources/images/aboutImg1.jpg" alt="브랜드이미지">
                            </div>
                            <div id="mainDesc-desc">
                                <h3>At BlingBling, we hold our jewelry to a higher standard. 
                                    Because the best investment you can make is in yourself – and our planet.
                                </h3>
                                <p>
                                    Since our founding in 2022, we’ve worked to elevate the everyday of people 
                                    around the world with Earth-friendly jewelry that lasts. 
                                    We continue to challenge the jewelry industry 
                                    by bridging the gap between quality, accessibility, 
                                    and sustainability. We craft our jewelry to stand the test of time, 
                                    making sure you know how and where your pieces were made, 
                                    and guarantee your purchase stays within your budget. 
                                    Our designs are timeless. Our quality is unmatched. 
                                    And our commitment to the environment never wavers.
                                </p>
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