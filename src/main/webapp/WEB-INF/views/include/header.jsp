<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
		<header>
                <div id="logo" ><a href="/index.jsp">BlingBling</a></div>
                <div id="nav">
                    <ul id="topMenu">
                        <li><a href="/board/aboutPage.jsp">ABOUT</a></li>
                        <li><a href="/shop/shopPage.jsp">SHOP</a></li>
                        <li id="boardLi">
                        	<a href="#">BOARD</a>
                        	<div id="dropDownBoard">
                        		<div class="myPageNav">
	                        		<ul>
	                        			<li>
	                        				<a href="/board/noticeList.do">NOTICE</a>
	                        			</li>
	                        			<li>
	                        				<a href="/review/reviewList.do">REVIEW</a>
	                        			</li>
	                        			<li>
	                        				<a href="/myQna/list.do">QNA</a>
	                        			</li>
	                        		</ul>
                        		</div>
                        	</div>
                        </li>
                        <li><a href="/board/showroomPage.jsp">SHOWROOM</a></li>
                    </ul>
                    <ul id="rightMenu">
                    	<c:if test="${sessionScope.memberId ne null }">
	                    	<li><a href="#" id="logoutBtn" onclick="checkLogOut();">LOGOUT</a></li>
	                    	<li id="myPageLi">
                            	<a href="#">MY PAGE</a>
	                            <div id="dropDownMy">
	                                <div class="myPageNav">
	                                    <ul>
	                                   		<li><a href="/member/myInfo.do?member-id=${memberId }">회원 정보 수정</a></li>
	                                        <li><a href="/shop/cart.jsp">장바구니</a></li>
	                                        <li><a href="/member/myOrderList.jsp">주문 내역</a></li>
	                                        <li><a href="/myQna/list.do?memberId=${memberId }&currentPage=1">나의 문의 내역</a></li>
	                                    </ul>
		                            </div>
	                            </div>
                        	</li>
                        	<li><a href="/shop/cart.jsp">CART</a></li>
                    	</c:if>
                    	<c:if test="${sessionScope.memberId eq null }">
	                        <li><a href="/member/login.do">LOGIN</a></li>
	                        <li id="myPageLi">
	                            <a href="/member/login.do" onclick="alertLogin();">MY PAGE</a>
	                        </li>
	                        <li><a href="/member/login.do" onclick="alertLogin();">CART</a></li>
                    	</c:if>
                    </ul>
                </div>
            </header>