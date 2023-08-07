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
        <link rel="stylesheet" href="/resources/css/shopPage.css">
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <!-- <div id="shopTitle">
                    <p>SHOP</p>
                </div> -->
                <div id="shopCtg">
                    <ul>
                        <li>
                            <a href="#" class="category-link" data-category="all">ALL</a>
                        </li>
                        <li>
                            <a href="#" class="category-link" data-category="rings">RINGS</a>
                        </li>
                        <li>
                            <a href="#" class="category-link" data-category="bracelets">BLACELETS</a>
                        </li>
                        <li>
                            <a href="#" class="category-link" data-category="necklaces">NECKLACES</a>
                        </li>
                        <li>
                            <a href="#" class="category-link" data-category="earrings">EARRINGS</a>
                        </li>
                        <li>
                            <a href="#" class="category-link" data-category="etc">ETC</a>
                        </li>
                    </ul>
                </div>
                <div id="shopMain" class="productGrid">
                    <div class="product-item" data-category="bracelets">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/product5.jpg&title=bold%20chain%20bracelet&price=140,000">
                            <img src="/resources/images/product5.jpg" alt="상품15" class="productImg">
                            <div class="wrapImg">
                                <span>NEW</span>
                            </div>
                            <p class="title">bold chain bracelet</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;140,000</p>
                    </div>
                    <div class="product-item" data-category="necklaces">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/product2.jpg&title=bold%20line%20necklace&price=78,000">
                            <img src="/resources/images/product2.jpg" alt="상품14" class="productImg">
                            <div class="wrapImg">
                                <span>NEW</span>
                            </div>
                            <p class="title">bold line necklace</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;78,000</p>
                    </div>
                    <div class="product-item" data-category="earrings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/product3.jpg&title=gold%20two%20cherries%20earring&price=98,000">
                            <img src="/resources/images/product3.jpg" alt="상품14" class="productImg">
                            <div class="wrapImg">
                                <span>NEW</span>
                            </div>
                            <p class="title">two cherries earring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;98,000</p>
                    </div>
                    <div class="product-item" data-category="rings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/product4.jpg&title=luxury%20star%20ring&price=64,000">
                            <img src="/resources/images/product4.jpg" alt="상품13" class="productImg">
                            <div class="wrapImg">
                                <span>NEW</span>
                            </div>
                            <p class="title">luxury star ring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;64,000</p>
                    </div>
                    <div class="product-item" data-category="earrings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/product7.jpg&title=bold%20silver%20earring&price=79,000">
                            <img src="/resources/images/product7.jpg" alt="상품16" class="productImg">
                            <p class="title">bold silver earring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;79,000</p>
                    </div>
                    <div class="product-item" data-category="bracelets">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/luminous_gold_bangle.jpg&title=luminous%20gold%20bangle&price=150,000">
                            <img src="/resources/images/luminous_gold_bangle.jpg" alt="상품17" class="productImg">
                            <p class="title">luminous gold bangle</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;150,000</p>
                    </div>
                    <div class="product-item" data-category="necklaces">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/four_pendants_necklace.jpg&title=four%20pendants%20necklace&price=110,000">
                            <img src="/resources/images/four_pendants_necklace.jpg" alt="상품18" class="productImg">
                            <p class="title">four pendants necklace</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;110,000</p>
                    </div>
                    <div class="product-item" data-category="bracelets">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/chunkychainbracelet.jpg&title=chunky%20chain%20bracelet&price=210,000">
                            <img src="/resources/images/chunkychainbracelet.jpg" alt="상품19" class="productImg">
                            <p class="title">chunky chain bracelet</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;210,000</p>
                    </div>
                    <div class="product-item" data-category="bracelets">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/enchantin_gold_bracelet.jpg&title=enchantin%20gold%20bracelet&price=77,000">
                            <img src="/resources/images/enchantin_gold_bracelet.jpg" alt="상품1" class="productImg">
                            <p class="title">enchantin gold bracelet</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;77,000</p>
                    </div>
                    <div class="product-item" data-category="necklaces">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/leafnecklace.jpg&title=leaf%20necklace&price=170,000">
                            <img src="/resources/images/leafnecklace.jpg" alt="상품1" class="productImg">
                            <p class="title">leaf necklace</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;170,000</p>
                    </div>
                    <div class="product-item" data-category="necklaces">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/starlightnecklace.jpg&title=starlight%20necklace&price=430,000">
                            <img src="/resources/images/starlightnecklace.jpg" alt="상품1" class="productImg">
                            <p class="title">starlight necklace</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;430,000</p>
                    </div>
                    <div class="product-item" data-category="bracelets">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/timeless_bracelet.jpg&title=timeless%20bracelet&price=109,000">
                            <img src="/resources/images/timeless_bracelet.jpg" alt="상품1" class="productImg">
                            <p class="title">timeless bracelet</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;109,000</p>
                    </div>
                    <div class="product-item" data-category="bracelets">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/simple_gold_bracelet.jpg&title=simple%20gold%20bracelet&price=79,000">
                            <img src="/resources/images/simple_gold_bracelet.jpg" alt="상품1" class="productImg">
                            <p class="title">simple gold bracelet</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;79,000</p>
                    </div>
                    <div class="product-item" data-category="rings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/croissantring.jpg&title=croissant%20ring&price=89,000">
                            <img src="/resources/images/croissantring.jpg" alt="상품1" class="productImg">
                            <p class="title">croissant ring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;89,000</p>
                    </div>
                    <div class="product-item" data-category="rings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/threecrossring.jpg&title=three%20cross%20ring&price=140,000">
                            <img src="/resources/images/threecrossring.jpg" alt="상품1" class="productImg">
                            <p class="title">three cross ring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;140,000</p>
                    </div>
                    <div class="product-item" data-category="earrings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/longdropearring.jpg&title=long%20drop%20earring&price=90,000">
                            <img src="/resources/images/longdropearring.jpg" alt="상품1" class="productImg">
                            <p class="title">long drop earring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;90,000</p>
                    </div>
                    <div class="product-item" data-category="necklaces">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/doublependantnecklace.jpg&title=double%20pendant%20necklace&price=190,000">
                            <img src="/resources/images/doublependantnecklace.jpg" alt="상품1" class="productImg">
                            <p class="title">double pendant necklace</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;190,000</p>
                    </div>
                    <div class="product-item" data-category="rings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/sunflowerringset.jpg&title=sunflower%20ring%20set&price=280,000">
                            <img src="/resources/images/sunflowerringset.jpg" alt="상품1" class="productImg">
                            <p class="title">sunflower ring set</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;280,000</p>
                    </div>
                    <div class="product-item" data-category="rings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/silvermoonring.jpg&title=silver%20moon%20ring&price=420,000">
                            <img src="/resources/images/silvermoonring.jpg" alt="상품11" class="productImg">
                            <p class="title">silver moon ring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;420,000</p>
                    </div>
                    <div class="product-item" data-category="rings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/pointringset.jpg&title=point%20ring%20set&price=420,000">
                            <img src="/resources/images/pointringset.jpg" alt="상품12" class="productImg">
                            <p class="title">point ring set</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;420,000</p>
                    </div>
                    <div class="product-item" data-category="bracelets">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/chainbracelet.jpg&title=chain%20bracelet&price=180,000">
                            <img src="/resources/images/chainbracelet.jpg" alt="상품1" class="productImg">
                            <p class="title">chain bracelet</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;180,000</p>
                    </div>
                    <div class="product-item" data-category="rings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/snakering.jpg&title=snake%20ring&price=200,000">
                            <img src="/resources/images/snakering.jpg" alt="상품2" class="productImg">
                            <p class="title">snake ring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;200,000</p>
                    </div>
                    <div class="product-item" data-category="earrings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/flowerearring.jpg&title=flower%20earring&price=78,000">
                            <img src="/resources/images/flowerearring.jpg" alt="상품3" class="productImg">
                            <p class="title">flower earring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;78,000</p>
                    </div>
                    <div class="product-item" data-category="earrings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/chunkyearring.jpg&title=chunky%20earring&price=112,000">
                            <img src="/resources/images/chunkyearring.jpg" alt="상품4" class="productImg">
                            <p class="title">chunky earring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;112,000</p>
                    </div>
                    <div class="product-item" data-category="earrings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/summercoraldropearring.jpg&title=summer%20coral%20drop%earring&price=45,000">
                            <img src="/resources/images/summercoraldropearring.jpg" alt="상품5" class="productImg">
                            <p class="title">summer coral drop earring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;45,000</p>
                    </div>
                    <div class="product-item" data-category="necklaces">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/doubleLineNecklace.jpg&title=double%20line%20necklace&price=320,000">
                            <img src="/resources/images/doubleLineNecklace.jpg" alt="상품6" class="productImg">
                            <p class="title">double line necklace</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;320,000</p>
                    </div>
                    <div class="product-item" data-category="necklaces">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/circleCharmNecklace.jpg&title=circle%20charm%20necklace&price=160,000">
                            <img src="/resources/images/circleCharmNecklace.jpg" alt="상품7" class="productImg">
                            <p class="title">circle charm necklace</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;160,000</p>
                    </div>
                    <div class="product-item" data-category="earrings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/boldVintageEarring.jpg&title=bold%20vintage%20earring&price=182,000">
                            <img src="/resources/images/boldVintageEarring.jpg" alt="상품8" class="productImg">
                            <p class="title">bold vintage earring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;182,000</p>
                    </div>
                    <div class="product-item" data-category="necklaces">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/serenityNecklace.jpg&title=serenity%20necklace&price=340,000">
                            <img src="/resources/images/serenityNecklace.jpg" alt="상품9" class="productImg">
                            <p class="title">serenity necklace</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;340,000</p>
                    </div>
                    <div class="product-item" data-category="earrings">
                        <a href="/shop/shopDesc.jsp?image=/resources/images/pearlPendantEarring.jpg&title=pearl%20pendant%20earring&price=180,000">
                            <img src="/resources/images/pearlPendantEarring.jpg" alt="상품10" class="productImg">
                            <p class="title">pearl pendant earring</p>
                        </a>
                        <span>
                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" alt="하트" class="addCart">
                            <img src="/resources/images/heart.png" alt="장바구니 등록완료" class="heartImg">
                        </span>
                        <p>&#8361;180,000</p>
                    </div>
                </div>
                <div id="shopButton" class="pageBtn">
                    <button class="prev-btn">
                        <img src="https://cdn-icons-png.flaticon.com/512/271/271220.png" alt="">
                    </button>
                    <div class="page-numbers">
                    </div>
                    <button class="next-btn">
                        <img src="https://cdn-icons-png.flaticon.com/512/87/87425.png" alt="">
                    </button>
                </div>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        <script src="/resources/js/shopCategory.js"></script>
        <script src="/resources/js/pageBtn.js"></script>
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