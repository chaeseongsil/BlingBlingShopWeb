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
        <link rel="stylesheet" href="/resources/css/myOrderListDesc.css">
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
                        <p>주문 내역</p>
                    </div>
                    <div class="orderListWrap">
                        <div class="orderList">
                            <div class="top">
                                <div class="date">주문일자</div>
                                <div class="number">주문번호</div>
                                <div class="productName">상품명</div>
                                <div class="pay">결제수단</div>
                                <div class="state">처리현황</div>
                            </div>
                            <div>
                                <div class="date" id="dateOn"></div>
                                <div class="number"><a href="" id="numberOn"></a></div>
                                <div class="productName">
                                    <img id="imgOn" src="" alt="">
                                    <span id="pNameOn"></span></div>
                                <div class="pay" id="payOn"></div>
                                <div class="state" id="stateOn"></div>
                            </div>
                        </div>
                        <div class="orderSpecific">
                            <div class="orderSpec">
                                <div class="orderSpecTitle">결제 정보</div>
                                <div>
                                    <span>주문 금액</span>
                                    <span id="priceOn"></span>
                                </div>
                                <div>
                                    <span>결제 수단</span>
                                    <span id="payOn1"></span>
                                </div>
                            </div>
                            <div class="orderSpec">
                                <div class="orderSpecTitle">배송지 정보</div>
                                <div>
                                    <span>받으시는 분</span>
                                    <span>아무개</span>
                                </div>
                                <div>
                                    <span>우편번호</span>
                                    <span>01234</span>
                                </div>
                                <div>
                                    <span>배송지 주소</span>
                                    <span>서울시 중구 남대문로 120</span>
                                </div>
                            </div>
                        </div>
                        <div id="boardButton" class="pageBtn">
                            <button onclick="changeItem();">교환/반품 신청</button>
                            <button onclick="goBack();">리뷰 작성하기</button>
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
            const orderDate = urlParams.get('date');
            const orderNumber = urlParams.get('number');
            const orderImg = urlParams.get('img');
            const orderTitle = urlParams.get('title');
            const orderPay = decodeURIComponent(urlParams.get('pay'));
            const orderState = urlParams.get('state');
            const orderPrice = urlParams.get('price');
            document.querySelector("#dateOn").innerText = orderDate;
            document.querySelector("#numberOn").innerText = orderNumber + "-0123456";
            document.querySelector("#imgOn").src = orderImg;
            document.querySelector("#pNameOn").innerHTML = orderTitle + "<small>외 1건</small>";
            document.querySelector("#payOn").innerText = orderPay;
            document.querySelector("#payOn1").innerHTML = orderPay +"<a href='#'> 명세서 보기 </a>";
            document.querySelector("#stateOn").innerText = orderState;
            document.querySelector("#priceOn").innerText = orderPrice;

            function goBack(){
                // history.back();
                location.href="/member/myReviewWrite.jsp?image="+urlParams.get('img')+"&title=" + urlParams.get('title');
            }

            function changeItem(){
                location.href="/member/myOrderChange.jsp";
            }
            function alertLogin(){
	           	alert("로그인이 필요한 서비스입니다.");
            }
        </script>
    </body>
</html>