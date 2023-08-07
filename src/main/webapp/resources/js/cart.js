/**
 * 
 */
const urlParams = new URLSearchParams(window.location.search);
const imageUrl = urlParams.get('image');
const productName = decodeURIComponent(urlParams.get('title'));
const productPrice = urlParams.get('price');
const cartTableTag = document.getElementById("cartTable");
if(imageUrl != null){
    cartTableTag.innerHTML += "<tr><td><input type='checkbox'><img src="+imageUrl+"><p>"+productName+"</p><p>&#8361;"+productPrice+"</p></td></tr>"
    document.querySelector(".totalPrice1").innerText = productPrice;
    document.querySelector(".totalPrice2").innerText = productPrice;
}else {
    cartTableTag.innerHTML = "<tr><td>장바구니가 비어있습니다.</td><tr>";
}

function goToOrderPage(){
    if(imageUrl != null){
        location.href="/shop/order.jsp?image="+urlParams.get('image')+"&title=" + urlParams.get('title') + "&price=" +urlParams.get('price');
    }else {
        alert("장바구니가 비어있습니다.");
        return false;
    }
}