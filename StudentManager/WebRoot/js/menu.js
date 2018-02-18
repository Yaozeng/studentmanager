$('#hmenu ul li a:eq(0)').css('color', '#FFFFFF');
$('#hmenu ul li a').click(function(){
        $(this).css({'color':'#FFFFFF'}).parents().siblings().children().css({'color':'#8A8A8A'});
    });
$('#rmenu ul li a').click(function(){
        $(this).css({'color':'#000000'}).parents().siblings().children().css({'color':'#8A8A8A'});
    });

