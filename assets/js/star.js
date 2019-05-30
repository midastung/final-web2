$(function (){
  var stars = '.stars',
      selected = '.selected';
  
  $(stars).on('click', function(){
    $(selected).each(function(){
      $(this).removeClass('selected');
    });
    $(this).addClass('selected');
  });
 
});