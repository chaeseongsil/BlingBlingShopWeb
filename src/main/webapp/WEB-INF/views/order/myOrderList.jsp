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
        <link rel="stylesheet" href="/resources/css/myOrderList.css">
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
                                <div class="date">2023/06/05</div>
                                <div class="number"><a href="/member/myOrderListDesc.jsp?date=2023/06/05&number=20230605&img=/resources/images/product2.jpg&title=bold%20line%20necklace&pay=신용카드&state=상품%20준비중&price=170,000">20230605-0123456</a></div>
                                <div class="productName">
                                    <img src="/resources/images/product2.jpg" alt="bold line necklace">
                                    <a href="/member/myOrderListDesc.jsp?date=2023/06/05&number=20230605&img=/resources/images/product2.jpg&title=bold%20line%20necklace&pay=신용카드&state=상품%20준비중&price=170,000">bold line necklace <small>외 1건</small></a></div>
                                <div class="pay">신용카드</div>
                                <div class="state">상품 준비중</div>
                            </div>
                            <div>
                                <div class="date">2023/05/01</div>
                                <div class="number"><a href="/member/myOrderListDesc.jsp?date=2023/05/01&number=20230501&img=/resources/images/four_pendants_necklace.jpg&title=four%20pendants%20necklace&pay=무통장%20입금&state=배송%20완료&price=240,000">20230501-0123456</a></div>
                                <div class="productName">
                                    <img src="/resources/images/four_pendants_necklace.jpg" alt="four pendants earring">
                                    <a href="/member/myOrderListDesc.jsp?date=2023/05/01&number=20230501&img=/resources/images/four_pendants_necklace.jpg&title=four%20pendants%20necklace&pay=무통장%20입금&state=배송%20완료&price=240,000">four pendants necklace <small>외 2건</small></a></div>
                                <div class="pay">무통장 입금</div>
                                <div class="state">배송 완료</div>
                            </div>
                            <div>
                                <div class="date">2023/04/06</div>
                                <div class="number"><a href="/member/myOrderListDesc.jsp?date=2023/04/06&number=20230406&img=/resources/images/croissantring.jpg&title=croissant%20ring&pay=간편%20결제&state=배송%20완료&price=119,000">20230406-0123456</a></div>
                                <div class="productName">
                                    <img src="/resources/images/croissantring.jpg" alt="croissant ring">
                                    <a href="/member/myOrderListDesc.jsp?date=2023/04/06&number=20230406&img=/resources/images/croissantring.jpg&title=croissant%20ring&pay=간편%20결제&state=배송%20완료&price=119,000">croissant ring <small>외 1건</small></a></div>
                                <div class="pay">간편 결제</div>
                                <div class="state">배송 완료</div>
                            </div>
                            
                        </div>
                        <div id="boardButton" class="pageBtn">
                            <button class="prev-btn">
                                <img src="https://cdn-icons-png.flaticon.com/512/271/271220.png" alt="<">
                            </button>
                            <div class="page-numbers">
                                <span class="page-number active">1</span>
                                <span class="page-number">2</span>
                                <span class="page-number">3</span>
                            </div>
                            <button class="next-btn">
                                <img src="https://cdn-icons-png.flaticon.com/512/87/87425.png" alt=">">
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
    </body>
</html>