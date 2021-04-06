$('.togglearrow').click(function () {
    $('.lang-ic').toggleClass('rotate-90');
});
$('.td').click(function () {
    $('.lang-pc').toggleClass('rotate-90');
});
$('.home-slider').owlCarousel({
    loop: true,
    nav: false,
    items: 1,
    dots: true,
    animateOut: 'zoomOut',
    animateIn: 'fadeInRightBig',
    autoplay: true,
    autoplayTimeout: 5000,
    autoplayHoverPause: false
})
$('#product-slider').owlCarousel({
    items: 5,
    loop: true,
    margin: 30,
    dots: false,
    nav: true,
    stagePadding: 10,
    navText: [
        '<i class="fa fa-angle-left" aria-hidden="true"></i>',
        '<i class="fa fa-angle-right" aria-hidden="true"></i>'
    ],
    responsive: {
        0: {
            items: 2,
        },
        600: {
            items: 2,
            margin: 40
        },
        1000: {}
    }
});

$('#right-product-slider').owlCarousel({
    loop: true,
    margin: 10,
    nav: false,
    items: 1,
    dots: false,
    center: true,
    stagePadding: 0,
    thumbs: true,
    thumbImage: false,
    thumbsPrerendered: true,
    thumbContainerClass: 'owl-thumbs',
    thumbItemClass: 'owl-thumb-item',
    responsive: {
        0: {

        },
        600: {
            items: 1,
            margin: 50
        },
        1000: {}
    }
});


$('#recept-slider').owlCarousel({
    items: 3,
    loop: true,
    margin: 70,
    dots: false,
    nav: true,
    stagePadding: 0,
    navText: [
        '<i class="fa fa-angle-left" aria-hidden="true"></i>',
        '<i class="fa fa-angle-right" aria-hidden="true"></i>'
    ],
    responsive: {
        0: {
            items: 1,
        },
        600: {
            items: 2,
            margin: 20
        },
        1000: {
            margin: 20
        }
    }
});
$('#recept-slider-comment').owlCarousel({
    loop: true,
    margin: 10,
    dots: false,
    nav: true,
    mouseDrag: false,
    autoplay: true,
    animateOut: 'slideOutLeft',
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 1
        },
        1000: {
            items: 1
        }
    }
});
$('#kesf-et-slider').owlCarousel({
    items: 3,
    loop: true,
    margin: 70,
    dots: false,
    nav: true,
    stagePadding: 0,
    navText: [
        '<i class="fa fa-angle-left" aria-hidden="true"></i>',
        '<i class="fa fa-angle-right" aria-hidden="true"></i>'
    ],
    responsive: {
        0: {
            items: 1,

        },
        600: {
            items: 2,
            margin: 20
        },
        1000: {
            margin: 20
        }
    }
});

$('.search-nav').click(function () {
    $('.search-nav-panel').toggleClass('active');
    $(this).toggleClass('active');
    $('.search-result').removeClass('result-active');
    $('#search').val('');
});
$('#search').keyup(function (e) {
    let text = $(this).val();
    let id = $('#cate').val();
    if (text != '') {
        $('.search-result').addClass('result-active');
        $.ajax({
            async: true,
            url: '/Products/Search/',
            type: 'POST',
            dataType: 'html',
            data: { name: text, id: id },
            success: function (data) {
                $('.apedd').html(data);
            }
        });
    } else {
        $('.search-result').removeClass('result-active');
    }
});







$(document).on("click", "#removespan", function () {
    $(this).parent().remove();
});

function myFunction(x) {
    x.classList.toggle("change");
}


$('.navicon').on('click', function (e) {
    e.preventDefault();
    $(this).toggleClass('navicon--active');
    $('.toggle').toggleClass('toggle--active');
});


$(".navicon").click(function (event) {
    $('body').toggleClass('overflow');
});
var fbButton = document.getElementById('fb-facebook');
var url = window.location.href;
fbButton.addEventListener('click', function () {
    window.open('https://www.facebook.com/sharer/sharer.php?u=' + url,
        'facebook-share-dialog',
        'width=800,height=600'
    );
    return false;
});