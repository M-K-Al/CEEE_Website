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
<div class="my-4 flex flex-1 flex-col">
    <div id="title-container"
         class="place-self-center opacity-0 transition-[opacity] duration-1000 ease-in space-y-20 will-change-[opacity]">
        <h1 id="title"
            class="mt-[30vh] select-none font-extrabold leading-none tracking-tight text-gray-900 will-change-[margin-bottom,_opacity] transition-[margin-bottom_opacity] text-3xl duration-[1.5s] md:text-4xl lg:text-5xl xl:text-6xl 2xl:text-7xl">
            CEEE's Server
            <mark id="title-database"
                  class="bg-gradient-to-r bg-[length:200%_200%] ease-[cubic-bezier(1, 0, 0, 1)] from-cyan-600 via-purple-400 to-emerald-600 bg-clip-text px-2 text-transparent transition-[background-position] duration-[3s]">
                Database
            </mark>
        </h1>
        <h5 class="flex font-semibold leading-none tracking-tight text-gray-900 text-md md:text-lg lg:text-xl xl:text-2xl 2xl:text-3xl">
            > A collection of projects from around Saudi Arabia</h5>
    </div>
    <div id="content-container" class="mt-20 w-full max-w-5xl self-center">

        <div class="mx-10">
            <div id="visit-project" class="my-20 flex flex-row">
                <a href="${pageContext.request.contextPath}/projects"
                   class="z-10 flex flex-1 flex-row border-2 items-center rounded-2xl py-4 px-4 will-change-[background-color,padding,transform] transition-[background-color,padding,transform] duration-300 hover:bg-emerald-400 hover:scale-95 lg:py-6 xl:py-8 2xl:py-10">
                    <img class="pointer-events-none mr-4 h-12 w-10 select-none pt-2" src="./resources/icons/list.svg"/>
                    <h5 class="font-semibold leading-none text-gray-900 text-md md:text-lg lg:text-xl xl:text-2xl 2xl:text-3xl">
                        See Projects</h5>
                </a>
            </div>

            <div id="centers-map-container" class="mt-10">
                <div id="center-map-header" class="flex w-fit flex-row items-center group">
                    <img alt="Map icon" class="pointer-events-none mr-4 h-12 w-10 select-none pt-2"
                         src="./resources/icons/map.svg"/>
                    <h5 class="font-semibold leading-none text-gray-900 underline-offset-4 text-md group-hover:underline md:text-lg lg:text-xl xl:text-2xl 2xl:text-3xl">
                        Centers map
                    </h5>
                </div>
                <div id="centers-map-embed-container" class="p-4">
                    <%--suppress HtmlDeprecatedAttribute --%>
                    <iframe scrolling="no" id='centers-map'
                            class="w-full my-10 h-[30rem] flex-1 overflow-x-hidden fill-blue-600"
                            src="./resources/assets/ksa-map.svg"></iframe>
                </div>
            </div>
        </div>

    </div>
</div>
<jsp:include page="common/footer.jsp"/>
</body>
<script src="index.js"></script>
</html>