/**
 * 
 */// shop페이지에서 이미지, title, 가격 값을 받아오는 코드 
            const urlParams = new URLSearchParams(window.location.search);
            const imageUrl = urlParams.get('image');
            const productName = decodeURIComponent(urlParams.get('title'));
            const productPrice = urlParams.get('price');
            const imageElement = document.querySelector('.product-image');
            const nameElement = document.querySelector('.product-name');
            const priceElement = document.querySelector('.product-price');
            const imageDesc = document.querySelector('.product-image-desc');
            const imageDesc2 = document.querySelector('.product-image-desc2');
            imageElement.src = imageUrl;
            imageDesc.src = imageUrl;
            imageDesc2.src = imageUrl;
            nameElement.textContent = productName;
            priceElement.innerHTML = '&#8361;' + productPrice;

            //상품 색상 선택시 div가 최대 3개까지 추가되는 코드 
            const colorSelect = document.getElementById('productColor');
            const infoSelectDiv = document.getElementById('infoSelect');
            const infoTitleContainer = document.querySelector("#infoTitle");
            const orderSum = document.querySelector("#orderResult");
            const orderPrice = document.querySelector("#priceResult");

            let priceTotal = 0;
            
            const maxCloneCount = 3;
            let cloneCount = 0;

            colorSelect.addEventListener('change', function() {
                const selectedColor = this.value;
                addInfoSelect(selectedColor);
            });
            function addInfoSelect(color){
                if(cloneCount >= maxCloneCount){
                    return;
                }
                const infoSelectClone = infoSelectDiv.cloneNode(true);
                infoSelectClone.setAttribute('id', '');
                infoSelectClone.querySelector("#pName").textContent = productName;
                infoSelectClone.querySelector("#pColor").textContent = "(" + color + ")";
                infoSelectClone.style.display = 'block';
                infoSelectClone.style.height = "50px";
                const removeBtn = infoSelectClone.querySelector(".removeBtn");
                removeBtn.addEventListener("click", function(){
                    infoTitleContainer.removeChild(infoSelectClone);
                    cloneCount--;
                    totalNumber();
                });
                infoTitleContainer.appendChild(infoSelectClone);
                cloneCount++;
                totalNumber();

            }
            function totalNumber(){
                const orderCount = document.querySelectorAll(".orderCount");
                let total = 0;
                orderCount.forEach(function(element){
                    let value = parseInt(element.value);

                    if(!isNaN(value)){
                        total += value;
                    }
                });
                total = total-1;
                orderSum.textContent = total + "개";
                var totalPrice = productPrice.replace(/,/g, "");
                totalPrice = parseInt(totalPrice);
                priceResult.innerText = totalPrice*total + "원";
                priceTotal = totalPrice*total;
            }
            

            document.querySelector("#cartBtn").addEventListener("click", () =>{
                var isGoCart = confirm("상품이 장바구니에 등록되었습니다. 장바구니로 이동하시겠습니까?");
                if(isGoCart == true){
                    location.href="/shop/cart.jsp?image="+urlParams.get('image')+"&title=" + urlParams.get('title') + "&price=" + priceTotal;
                }
            });

            document.querySelector("#toOrderBtn").addEventListener("click", () => {
                location.href="/shop/order.jsp?image="+urlParams.get('image')+"&title=" + urlParams.get('title') + "&price=" + priceTotal;
            });