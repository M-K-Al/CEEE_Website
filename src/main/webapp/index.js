$(document).ready(function () {

    const transitionEnds = "transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd";

    randomDirections();
    setInterval(randomDirections, 2000);

    setTimeout(function () {
        $("#title-container").css("opacity", "100%");
        $("#title").css("margin-top", "4rem").bind(transitionEnds, function () {
            $(this).removeClass("transition-[margin-bottom_opacity]").removeClass("duration-[1.5s]").unbind();
        });
    }, 100);

    function randomDirections() {
        const random = Math.random();
        const dires = random > 0.66 ? ["right", "left"] : random > 0.33 ? ["center", "left"] : ["center", "right"];
        dires.sort(() => Math.random() - 0.5);
        $("#title-database").css("background-position", dires[0], dires[1]);
    }
});