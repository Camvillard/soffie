import $ from "jquery";
import "slick-carousel";

$(".book-carousel").slick({
  infinite: true,
  slidesToShow: 3,
  slidesToScroll: 3,
  nextArrow: '<i class="fas fa-angle-right carousel-nav"></i>',
  prevArrow: '<i class="fas fa-angle-left carousel-nav"></i>',
  responsive: [
    // {
    //   breakpoint: 1200,
    //   settings: {
    //     slidesToShow: 3,
    //     slidesToScroll: 3
    //   }
    // },
    {
      breakpoint: 992,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
  ]
});
