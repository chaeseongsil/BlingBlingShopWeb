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
        <link rel="stylesheet" href="/resources/css/header.css">
        <link rel="stylesheet" href="/resources/css/footer.css">
        <link rel="stylesheet" href="/resources/css/index.css">
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <div id="mainMain">
                    <div id="imgSlide">
                        <img class="fade" src="/resources/images/main1.jpg" alt="메인1">
                        <img class="fade" src="/resources/images/main2.jpg" alt="메인2">
                        <img class="fade" src="/resources/images/main3.jpg" alt="메인3">
                    </div>
                    <div id="mainProductImg">
                        <ul id="productImgList">
                            <li id="productListno1"class="productList">
                                <a href="/shop/shopDesc.jsp?image=/resources/images/product5.jpg&title=bold%20chain%20bracelet&price=140,000">
                                    <img src="/resources/images/product5.jpg" alt="제품5">
                                    <div class="wrapImg">
                                        <span>NEW</span>
                                    </div>
                                </a>
                                <div class="productName">
                                    <a href="/shop/shopDesc.jsp?image=/resources/images/product5.jpg&title=bold%20chain%20bracelet&price=140,000">
                                        bold chain bracelet
                                    </a> 
                                </div>
                                <div class="productPrice">
                                    &#8361; 140,000
                                </div>
                            </li>
                            <li id="productListno2"class="productList">
                                <a href="/shop/shopDesc.jsp?image=/resources/images/product2.jpg&title=bold%20line%20necklace&price=78,000">
                                    <img src="/resources/images/product2.jpg" alt="제품2">
                                    <div class="wrapImg">
                                        <span>NEW</span>
                                    </div>
                                </a>
                                <div class="productName">
                                    <a href="/shop/shopDesc.jsp?image=/resources/images/product2.jpg&title=bold%20line%20necklace&price=78,000">
                                        bold line necklace
                                    </a>
                                </div>
                                <div class="productPrice">
                                    &#8361; 78,000
                                </div>
                            </li>
                            <li id="productListno3"class="productList">
                                <a href="/shop/shopDesc.jsp?image=/resources/images/product3.jpg&title=gold%20two%20cherries%20earring&price=98,000">
                                    <img src="/resources/images/product3.jpg" alt="제품3">
                                    <div class="wrapImg">
                                        <span>NEW</span>
                                    </div>
                                </a>
                                <div class="productName">
                                    <a href="/shop/shopDesc.jsp?image=/resources/images/product3.jpg&title=gold%20two%20cherries%20earring&price=98,000">
                                        two cherries earring
                                    </a>
                                </div>
                                <div class="productPrice">
                                    &#8361; 98,000
                                </div>
                            </li>
                            <li id="productListno4"class="productList">
                                <a href="/shop/shopDesc.jsp?image=/resources/images/product4.jpg&title=luxury%20star%20ring&price=64,000">
                                    <img src="./resources/images/product4.jpg" alt="제품4">
                                    <div class="wrapImg">
                                        <span>NEW</span>
                                    </div>
                                </a>
                                <div class="productName">
                                    <a href="/shop/shopDesc.jsp?image=/resources/images/product4.jpg&title=luxury%20star%20ring&price=64,000">
                                        Luxury star ring
                                    </a>
                                </div>
                                <div class="productPrice">
                                    &#8361; 64,000
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        <script src="/resources/js/slideshow.js"></script>
        <script>
            var logout = document.querySelector("#logoutBtn");
            function checkLogOut(){
                var isLogout = confirm("정말 로그아웃 하시겠습니까?");
                if(isLogout == true){
                    location.href="/member/logout.do";
                	alert("정상적으로 로그아웃되었습니다.");
                    
                }
            }
            /* logout.addEventListener("click", () => {
            }); */
            function alertLogin(){
	           	alert("로그인이 필요한 서비스입니다.");
            }
        </script>
    </body>
</html>