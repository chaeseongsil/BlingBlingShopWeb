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
        <link rel="stylesheet" href="/resources/css/orderPage.css">
        <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <div id="mainWrap">
                    <div id="orderTop">
                        <div id="orderTitle">
                            <p>주문 내역</p>
                        </div>
                        <div id="orderList">
                            <table id="orderTable">
                
                            </table>
                        </div>
                        <div id="orderPrice">
                            <p>상품 구매 금액 <span class="totalPrice1">0</span>원 + 배송비 0원 = <span class="totalPrice2">0</span>원  </p>
                        </div>
                        <div id="orderBtns">
                            <button onclick="goBack();">뒤로 가기</button>
                        </div>
                    </div>
                    <div id="orderMid">
                        <div id="shipTitle">
                            <p>배송 정보</p>
                        </div>
                        <div id="shipInfo">
                            <form action="/member/myOrderList.jsp" id="orderForm" method="get">
                                <div class="order-form-div" id="orderCheckBox">
                                    <input type="radio" name="orderInfo" id="orderCheck-same" class="orderCheck"> 
                                    <label for="orderCheck-same">회원 정보와 동일</label> 
                                    <input type="radio" name="orderInfo" id="orderCheck-new" class="orderCheck"> 
                                    <label for="orderCheck-new">새로운 배송지</label> 
                                </div>
                                <div class="order-form-div">
                                    <p>NAME</p>
                                    <input type="text" name="userName" id="user-name" class="order-form-field" required>
                                </div>
                                <div class="order-form-div">
                                    <p>ADDRESS</p>
                                    <div id="postBox">
                                        <input type="text" name="userPost" id="user-post" class="order-form-field" readonly/>
                                        <!-- <input type="button" value="우편번호" id="order-form-btn1" > -->
                                        <button id="order-form-btn1" onclick="execDaumPostcode();">우편번호</button>
                                    </div>
                                    <input type="text" name="userPostAddr1" id="user-post-addr1" placeholder="기본주소" class="order-form-field" readonly>
                                    <input type="text" name="userPostAddr2" id="user-post-addr2" placeholder="상세주소" class="order-form-field" required>
                                </div>
                                <div class="order-form-div">
                                    <p>MOBILE</p>
                                    <div id="phoneBox">
                                        <select name="tel1" id="user-tel1" class="order-form-field" required>
                                            <option value="010">010</option>
                                            <option value="011">011</option>
                                            <option value="016">016</option>
                                            <option value="017">017</option>
                                            <option value="018">018</option>
                                            <option value="019">019</option>
                                        </select>
                                        &nbsp;-&nbsp; 
                                        <input type="tel" name="tel2" id="user-tel2" class="order-form-field" required>
                                    </div>
                                </div>
                                <div class="order-form-div">
                                    <p>EMAIL</p>
                                    <input type="email" name="userEmail" id="user-email" class="order-form-field" required>
                                </div>
                                <div class="order-form-div">
                                    <p>적립금 (사용가능 적립금 5,000원)</p>
                                    <p class="order-form-price">
                                        <input type="text" id="coin" class="order-form-field">원
                                    </p>
                                </div>
                                <div class="order-form-div">
                                    <p id="pay">결제 수단</p>
                                    <div id="paySelect">
                                        <input type="radio" name="selectPay" id="pay-accout">
                                        <label for="pay-accout">실시간 계좌이체</label>
                                        <input type="radio" name="selectPay" id="pay-card">
                                        <label for="pay-card">신용카드</label> 
                                        <input type="radio" name="selectPay" id="pay-phone">
                                        <label for="pay-phone">휴대폰 결제</label>
                                        <input type="radio" name="selectPay" id="pay-deposit">
                                        <label for="pay-deposit">무통장 입금</label>
                                        <input type="radio" name="selectPay" id="pay-pay">
                                        <label for="pay-pay">간편 결제</label>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div id="orderBtm">
                        <div id="orderBtmTitle">
                            <p>결제 정보</p>
                        </div>
                        <div class="orderBtm-div">
                            <span>총 상품 금액</span>
                            <span id="product-price">원</span>
                        </div>
                        <div class="orderBtm-div">
                            <span>배송비</span>
                            <span>0원</span>
                        </div>
                        <div class="orderBtm-div">
                            <span>총 할인금액</span>
                            <span id="totalCoin"></span>
                        </div>
                        <div class="orderBtm-div">
                            <span><strong>TOTAL</strong></span>
                            <span id="resultPrice">원</span>
                        </div>
                        <div class="orderBtm-last">
                            <button form="orderForm"  id="orderSubmit">결제하기</button>
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
        <script type="text/javascript" src="/resources/js/order.js"></script>
    </body>
</html>