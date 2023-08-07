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
        <link rel="stylesheet" href="/resources/css/shopDesc.css">
        <link rel="j">
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <div id="mainWrap">
                    <div id="shopTop">
                        <div id="shopTopImg" class="shopTopBox">
                            <div class="product-details">
                                <img class="product-image" src="" alt="상품 이미지">
                            </div>
                        </div>
                        <div id="shopTopInfo" class="shopTopBox">
                            <div id="infoTitle">
                                <p class="product-name"></p>
                                <p class="product-price"></p>
                                <br>
                                <span class="product-ship"><b>배송비</b></span>
                                <span>무료</span> <br><br>
                                <span class="product-color">COLOR</span>
                                <select name="color" id="productColor">
                                    <option value="none" selected disabled hidden>선택하세요</option>
                                    <option value="gold">GOLD</option>
                                    <option value="silver">SILVER</option>
                                    <option value="rosegold">ROSE GOLD</option>
                                </select>
                            </div>
                            <div id="infoSelect" style="display:none">
                                <span id="pName" class="product-name"></span>
                                <span id="pColor" class="spanColor"></span>
                                <input type="number" name="orderCount" id="order-Count" class="orderCount" min="1" max="1" value="1">
                                <button class="removeBtn">X</button>
                            </div>
                            <div id="infoResult">
                                <div class="shopResult">
                                    <span>주문 수량</span> 
                                    <span id="orderResult">0개</span>
                                </div>
                                <div class="shopResult">
                                    <span>총 상품 금액</span>
                                    <span id="priceResult">0원</span>
                                </div>
                            </div>
                            <div id="infoBtn">
                                <input type="button" value="CART" class="orderBtn" id="cartBtn">
                                <input type="button" value="BUY NOW" class="orderBtn" id="toOrderBtn">
                            </div>
                        </div>
                    </div>
                    <div id="shopMid">
                        <img class="product-image-desc" src="" alt="상품 이미지">
                        <img class="product-image-desc2" src="" alt="상품 이미지">
                    </div>
                    <div id="shopBtm">
                        <div id="reviewTitle">REVIEW</div>
                        <div id="boardListWrap">
                            <div class="boardList">
                                <div class="top">
                                    <div class="num">번호</div>
                                    <div class="title">제목</div>
                                    <div class="writer">작성자</div>
                                    <div class="date">작성일</div>
                                    <div class="count">조회수</div>
                                </div>
                                <div>
                                    <div class="num">5</div>
                                    <div class="title"><a href="#">너무 맘에 들어요!!</a></div>
                                    <div class="writer">khkhkh</div>
                                    <div class="date">2023.06.05</div>
                                    <div class="count">43</div>
                                </div>
                                <div>
                                    <div class="num">4</div>
                                    <div class="title"><a href="#">친구들이 어디서 샀냐고 물어봐요</a></div>
                                    <div class="writer">hoihoi</div>
                                    <div class="date">2023.05.04</div>
                                    <div class="count">60</div>
                                </div>
                                <div>
                                    <div class="num">3</div>
                                    <div class="title"><a href="#">개만족 다른색도 주문할거예요</a></div>
                                    <div class="writer">newjeaaaaans</div>
                                    <div class="date">2023.04.15</div>
                                    <div class="count">80</div>
                                </div>
                                <div>
                                    <div class="num">2</div>
                                    <div class="title"><a href="#">이런 쇼핑몰을 이제 알다니</a></div>
                                    <div class="writer">kimsuhanmu</div>
                                    <div class="date">2023.02.08</div>
                                    <div class="count">99</div>
                                </div>
                                <div>
                                    <div class="num">1</div>
                                    <div class="title"><a href="#">친구 생일선물로 사줬는데 친구가 엄청 좋아해요~</a></div>
                                    <div class="writer">sunpunggi</div>
                                    <div class="date">2023.02.01</div>
                                    <div class="count">101</div>
                                </div>
                                <div class="cont reviewCont" id="boardContent">
                                    
                                </div>
                            </div>
                        </div>
                        <div id="pageButtonContainer">
                            <button class="prev-btn">
                                <img src="https://cdn-icons-png.flaticon.com/512/271/271220.png" alt="">
                            </button>
                            <div class="page-numbers">
                                <span class="page-number active">1</span>
                                <span class="page-number">2</span>
                                <span class="page-number">3</span>
                            </div>
                            <button class="next-btn">
                                <img src="https://cdn-icons-png.flaticon.com/512/87/87425.png" alt="">
                            </button>
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
        <script type="text/javascript" src="/resources/js/shopPage.js"></script>
    </body>
</html>