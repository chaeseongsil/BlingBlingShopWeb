var productItems = document.querySelectorAll('.product-item');
var categoryLinks = document.querySelectorAll('.category-link');
categoryLinks.forEach(function (link) {
    link.addEventListener('click', function (event) {
        event.preventDefault();
        var currentCategory = link.getAttribute('data-category');
        categoryLinks.forEach(function (link) {
            link.classList.remove('active');
        });
        link.classList.add('active');

        productItems.forEach(function (item) {
        item.style.display = 'none';
        });

        if (currentCategory === 'all') {
            location.reload();
        } else {
        var filteredItems = document.querySelectorAll('.product-item[data-category="' + currentCategory + '"]');
        filteredItems.forEach(function (item) {
            item.style.display ='grid';
        });
        }
    });
});
