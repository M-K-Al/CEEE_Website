<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>CEEE</title>
</head>
<body class="flex min-h-screen flex-col bg-gray-100">
<jsp:include page="common/header.jsp"/>
<div class="my-4 flex flex-1 self-center">
    <div class="flex flex-1 flex-col">
        <h1 id="title"
            class="mt-[30vh] select-none font-extrabold leading-none tracking-tight text-gray-900 opacity-0 transition-[margin-bottom_opacity] text-3xl duration-[1.5s] md:text-4xl lg:text-5xl xl:text-6xl 2xl:text-7xl">
            CEEE's Server
            <mark id="title-database"
                  class="bg-gradient-to-r ease-[cubic-bezier(1, 0, 0, 1)] from-cyan-600 via-purple-400 to-emerald-600 bg-clip-text px-2 text-transparent transition-[background-position] duration-[3s]">
                Database
            </mark>
        </h1>
        <div id="visit-project"
             class="my-20 flex flex-row space-between opacity-0 ease-in duration-[1.75s]">
            <div class="hover:pl-10 flex-1 flex flex-row px-6 cursor-pointer rounded-2xl transition-[colors,padding] duration-300 hover:bg-emerald-400">
                <img class="h-12 w-10 pt-2 mr-4 self-center select-none" src="./resources/icons/list.svg"/>
                <h4 class="inline-block py-10 text-lg font-semibold leading-none text-gray-900 md:text-xl lg:text-2xl xl:text-3xl 2xl:text-4xl">
                    See Projects
                </h4>
            </div>
        </div>
    </div>
</div>
<jsp:include page="common/footer.jsp"/>
</body>
<style>
    #title-database {
        background-size: 200% 200%;
    }

</style>
<script>
    $(document).ready(function () {

        randomDirections();
        setInterval(randomDirections, 2000);

        setTimeout(function () {
            $("#title").css("margin-top", "4rem").css("opacity", "100%");
            $("#visit-project").css("opacity", "100%");
        }, 50);

        function randomDirections() {
            const random = Math.random();
            const dires = random > 0.66 ? ["right", "left"] : random > 0.33 ? ["center", "left"] : ["center", "right"];
            dires.sort(() => Math.random() - 0.5);
            $("#title-database").css("background-position", dires[0], dires[1]);
        }
    });
</script>

</html>