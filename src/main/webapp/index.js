setInterval(function () {
    const [from, to] = Math.random() > 0.5 ? ["right", "right"] : Math.random() > 0.5 ? ["center", "left"] : ["right", "right"];
    $("#title").css("--animation-dire-from", from).css("--animation-dire-to", to);
}, 10000);

svg = document.createElementNS("http://www.w3.org/2000/svg", "svg");
svg.setAttribute("viewBox", "0 0 450 450");
svg.classList.add("w-full", "z-10");
newPath = document.createElementNS("http://www.w3.org/2000/svg", "path");
newPath.classList.add("transition-all", "duration-[15s]", "origin-top-left", "translate-y-[-5%]");

newPath.setAttribute("fill", "rgba(0,0,0,0.1)");
newPath.setAttribute("d", "M 10.1 3.5 c 0 -0.65 -0.5 -1.2 -1.3 -1.55 c -0.75 -0.35 -1.75 -0.6 -2.9 -0.6 s -2.1 0.2 -2.9 0.6 c -0.75 0.35 -1.3 0.9 -1.3 1.55 l 0 5 c 0 0.65 0.5 1.2 1.3 1.55 c 0.75 0.35 1.75 0.6 2.9 0.6 s 2.1 -0.2 2.9 -0.6 c 0.75 -0.35 1.3 -0.9 1.3 -1.55 L 10.1 3.5 M 5.95 1.8 c 1.05 0 2 0.2 2.7 0.55 c 0.65 0.3 1 0.75 1 1.15 c 0 0.4 -0.35 0.8 -1 1.15 c -0.65 0.3 -1.6 0.55 -2.7 0.55 c -1.05 0 -2 -0.2 -2.7 -0.55 s -1 -0.75 -1 -1.15 s 0.35 -0.8 1 -1.15 S 4.9 1.8 5.95 1.8 L 5.95 1.8 z M 2.25 4.5 c 0.2 0.2 0.5 0.4 0.8 0.55 c 0.75 0.35 1.75 0.6 2.9 0.6 s 2.1 -0.2 2.9 -0.6 c 0.3 -0.15 0.6 -0.35 0.8 -0.55 l 0 0.65 c 0 0.4 -0.35 0.8 -1 1.15 c -0.65 0.3 -1.6 0.55 -2.7 0.55 c -1.05 0 -2 -0.2 -2.7 -0.55 s -1 -0.75 -1 -1.15 C 2.25 4.9 2.25 4.7 2.25 4.5 L 2.25 4.5 z M 2.25 6.15 c 0.2 0.2 0.5 0.4 0.8 0.55 c 0.75 0.35 1.75 0.6 2.9 0.6 s 2.1 -0.2 2.9 -0.6 c 0.3 -0.15 0.6 -0.35 0.8 -0.55 l 0 0.65 c 0 0.4 -0.35 0.8 -1 1.15 c -0.65 0.3 -1.6 0.55 -2.7 0.55 c -1.05 0 -2 -0.2 -2.7 -0.55 c -0.65 -0.3 -1 -0.75 -1 -1.15 C 2.25 6.6 2.25 6.4 2.25 6.15 L 2.25 6.15 z M 2.25 7.8 c 0.2 0.2 0.5 0.4 0.8 0.55 c 0.75 0.35 1.75 0.6 2.9 0.6 s 2.1 -0.2 2.9 -0.6 c 0.3 -0.15 0.6 -0.35 0.8 -0.55 v 0.65 c 0 0.4 -0.35 0.8 -1 1.15 c -0.65 0.3 -1.6 0.55 -2.7 0.55 c -1.05 0 -2 -0.2 -2.7 -0.55 c -0.65 -0.3 -1 -0.75 -1 -1.15 L 2.2 7.8 z");
document.getElementById("whole").appendChild(svg);

// const screenHeight = screen.height;
// const screenWidth = screen.width;
// const height = newPath.getBoundingClientRect().height;
// const width = newPath.getBoundingClientRect().width;

const isElementInViewport = el => {
    const rect = el.getBoundingClientRect();

    return (rect.top >= 0 && rect.left >= 0 && rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) && rect.right <= (window.innerWidth || document.documentElement.clientWidth));
};
const transitionEnds = "transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd";
setInterval(() => {
    const newer = newPath.cloneNode();
    svg.appendChild(newer);
    newer.classList.add(`translate-x-[${Math.random() * 100}%]`);
    $(newer).bind(transitionEnds, () => svg.removeChild(newer));
    setTimeout(() => newer.classList.add("translate-y-full"), 50);
}, 200);