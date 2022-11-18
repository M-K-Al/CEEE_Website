$(document).ready(function () {
    const transitionEnds = "transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd";

    randomDirections();
    setInterval(randomDirections, 2000);

    setTimeout(function () {
        $("#title-container").css("opacity", "100%");
        $("#title").css("margin-top", "20vh").bind(transitionEnds, function () {
            $(this).removeClass("transition-[margin-bottom_opacity]").removeClass("duration-[1.5s]").unbind();
        });
    }, 100);

    function randomDirections() {
        const random = Math.random();
        const dires = random > 0.66 ? ["right", "left"] : random > 0.33 ? ["center", "left"] : ["center", "right"];
        dires.sort(() => Math.random() - 0.5);
        $("#title-database").css("background-position", dires[0], dires[1]);
    }

    $(".header").append(`<div class="relative mx-8 inline-block cursor-pointer select-none rounded-full bg-rose-300 duration-200 opacity-0 transition-[opacity,background-color] header-path group/link will-change-[opacity,background-color] group-hover:opacity-100">
        <div class="p-2 header-icon">
            <img class="pointer-events-none h-7 w-7 self-center opacity-70 peer" src="resources/icons/attachment.svg" alt="Copy link">
        </div>
        <span class="absolute hidden isolate bottom-[110%] duration-150 -left-6 z-20 min-w-max grow rounded-md bg-black px-4 py-2 text-center text-sm text-white opacity-0 group-hover/link:opacity-100 group-hover:block">Copy link</span>
    </div>`);

    $(".header-icon").on("click", function () {
        const that = $(this);
        const parent = that.parent();
        const firstSibling = that.siblings().first();

        navigator.clipboard.writeText(window.location.origin + window.location.pathname + "#" + parent.parent().attr("id")).then(function () {
            parent.addClass("bg-red-500");
            firstSibling.text("Link copied");
        }, function () {
            firstSibling.text("Couldn't copy");
        });

        setTimeout(() => {
            parent.removeClass("bg-red-500");
            firstSibling.text("Copy link");
        }, 1000);

    });
});