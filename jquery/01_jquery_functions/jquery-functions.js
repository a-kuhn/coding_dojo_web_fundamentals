$(document).ready(function(){
    $("#addClass button").click(function() {
        console.log('clicked addClass button');
        $("#addClass p").addClass("red text");
    });

    $("#slideToggle button").click(function(){
        console.log('clicked slideToggle button');
        $("#dumpsterPossum").slideToggle();
    });

    $("#append button").click(function(){
        console.log('clicked append button');
        $("#append p").append("<p>NEW PARAGRAPH</p>");
    });
});

