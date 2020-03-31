$(document).ready(function(){

    $('img').hover(
        function(){$(this).attr('src', 'mushroom-death-grip.png');},   //switch to img2
        function(){$(this).attr('src', 'reaching_snail.jpg'); //back to img1
    }); //end of .hover()

}) //end of doc.ready()





// $("#left_content").hover(
//     function(){$('#left_content').css('color', 'white');}, 
//     function(){$('#left_content').css('color', 'black');}
// );