$(document).ready(function(){
    $('img').click(function(){
        var current = $(this).attr('src');
        var next = $(this).attr('altsrc');
        $(this).attr('src', next);
        $(this).attr('altsrc', current);
    })
})