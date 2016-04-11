$(document).ready(function(){



    //$(".menu-section").stick_in_parent({
    //    offset_top: 130,
    //    bottoming: true,
    //    parent: $("menu-cat")
    //})
    //    .on("sticky_kit:stick", function(e) {
    //    console.log("has stuck!", e.target);
    //})
    //    .on("sticky_kit:unstick", function(e) {
    //        console.log("has unstuck!", e.target);
    //})
    //    .on("sticky_kit:bottom", function(e) {
    //        console.log("has bottomed!", e.target);
    //})
    //    .on("sticky_kit:unbottom", function(e) {
    //        console.log("has unbottomed!", e.target);
    //});

    //$('#body-container').off("scroll").on( "scroll", function(){
    //    $('.sub-head-text').innerHTML = "Hello";
    //
    //    if($('.test').position().top - $('#body-container').scrollTop() <= 0 ){
    //        $('.sub-head-text').innerText = $('.test-child').innerText;
    //    }
    //    console.log($('#body-container').scrollTop() + " | " + $('.test').position().top);
    //});


    $('.modal').click(function(){
        $('.modal').modal("hide");
    });
    $('.modal-dialog').click(function(e){
        e.stopPropagation();
    });

});