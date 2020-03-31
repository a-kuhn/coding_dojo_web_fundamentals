$(document).ready(function(){
    $('button').hover(
        function(){
            var arena = 'url('+$(this).text()+'.jpg)';
            console.log(arena);
            $('#arena').css('backgroundImage', arena);
            console.log($('#arena'))},
        function(){$('#arena').attr('src', '');
    }); //end of hover

    $('button').click(function(){
        var arena = 'url('+$(this).text()+'.jpg)';
        console.log(arena);
        $('#arena').css('backgroundImage', arena);

        $('#select-arena').hide();
        $('#select-players').css('visibility', 'visible'); 
    }); //end of click
    
    $('#player1, option').change(function(){
        var player1 = $(this).val()+'.png';
        console.log(player1);
        $('#player1-img').attr('src', player1);


    }); //end of player1 choice

    $('#player2, option').change(function(){
        var player2 = $(this).val()+'.png';
        console.log(player2);
        $('#player2-img').attr('src', player2);

    }); //end of player2 choice

}); //end of doc.ready

