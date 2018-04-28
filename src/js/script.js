$(document).ready(init);

function init() {
    $(".action a").click(changeState);
}

function changeState(e) {
    e.preventDefault();
    var actionDiv = $(e.currentTarget.parentElement);
    if(actionDiv.hasClass("chosen"))
        actionDiv.removeClass("chosen");
    else
        actionDiv.addClass("chosen");
}