const prevBtn = document.querySelector('.prev-btn');
const nextBtn = document.querySelector('.next-btn');
const productGrid = document.querySelector('.productGrid');
const pageNumbersContainer = document.querySelector('.page-numbers');

let currentPage = 0;

prevBtn.addEventListener('click', () => {
    currentPage = Math.max(0, currentPage - 1);
    showPage();
});

nextBtn.addEventListener('click', () => {
    const totalPages = Math.ceil(productGrid.children.length / 9);
    currentPage = Math.min(currentPage + 1, totalPages - 1);
    showPage();
});

function showPage() {
    const products = productGrid.children;
    const startIndex = currentPage * 9;
    const endIndex = startIndex + 9;

    for (let i = 0; i < products.length; i++) {
    products[i].style.display = i >= startIndex && i < endIndex ? 'block' : 'none';
    }

    renderPageNumbers();
}

function renderPageNumbers() {
    const totalPages = Math.ceil(productGrid.children.length / 9);
    let pageNumbersHTML = '';

    for (let i = 0; i < totalPages; i++) {
        const pageNumber = i + 1;
        const activeClass = currentPage === i ? 'active' : '';
        pageNumbersHTML += `<span class="page-number ${activeClass}">${pageNumber}</span>`;
    }

    pageNumbersContainer.innerHTML = pageNumbersHTML;

    const pageNumbers = document.querySelectorAll('.page-number');
    pageNumbers.forEach((pageNumber, index) => {
        pageNumber.addEventListener('click', () => {
        currentPage = index;
        showPage();
        });
    });
}

showPage();


var addCartImgs = document.querySelectorAll(".addCart");
addCartImgs.forEach(function (addCartImgs) {
    addCartImgs.addEventListener("click", function () {
        if(addCartImgs.getAttribute("src") == "https://cdn-icons-png.flaticon.com/512/1077/1077035.png"){
            alert("상품이 장바구니에 등록되었습니다.");
            addCartImgs.setAttribute("src", "../resources/images/heart.png");
        }else {
            alert("장바구니 등록을 취소하셨습니다.");
            addCartImgs.setAttribute("src", "https://cdn-icons-png.flaticon.com/512/1077/1077035.png");
        }
    });
});

