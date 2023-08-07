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
        <link rel="stylesheet" href="/resources/css/cart.css">
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <div id="mainWrap">
                    <div id="cartTitle">
                        <p>CART</p>
                    </div>
                    <div id="cartList">
                        <table id="cartTable">
            
                        </table>
                    </div>
                    <div id="cartPrice">
                        <p>상품 구매 금액 <span class="totalPrice1">0</span>원 + 배송비 0원 = <span class="totalPrice2">0</span>원  </p>
                    </div>
                    <div id="cartBtns">
                        <button onclick="goToOrderPage();">선택 상품 주문</button>
                        <button onclick="goToOrderPage();">전체 상품 주문</button>
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
        <script type="text/javascript" src="/resources/js/cart.js"></script>
    </body>
</html>