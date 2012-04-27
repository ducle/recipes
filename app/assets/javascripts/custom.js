$(function(){
  $(".nav-collapse .nav li a").click(function(){
    $(".nav-collapse .nav li").removeClass('active');
    $(this).closest('li').addClass('active');
  });

  $('#recipes').masonry({
    // options
    itemSelector : '.recipe-item'
  });
});

