$(document).ready(function(){
    alert("Click an image to make it disappear. Click restore to bring them back!")
    $("img").click(function(){
        $(this).css("visibility", "hidden");
    })

    $("button").click(function(){
        location.reload();
    })

});