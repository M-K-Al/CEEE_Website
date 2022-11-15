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
<div class="m-auto flex flex-col select-none">
    <h1 class="mb-4 flex-1 text-4xl font-extrabold leading-none tracking-tight text-gray-900 md:text-5xl lg:text-6xl xl:text-7xl 2xl:text-8xl">
        CEEE's
        <mark id="title"
              class="bg-gradient-to-r from-cyan-600 via-purple-400 to-emerald-600 bg-clip-text text-transparent">
            Database
        </mark>
    </h1>
</div>
<jsp:include page="common/footer.jsp"/>
</body>
<style>
    :root {
        --animation-dire-from: center;
        --animation-dire-to: center;
    }

    #title {
        background-size: 200% 200%;
        animation: 10s ease-in-out 0s infinite alternate gradient;
    }

    @keyframes gradient {
        0%,100% {
            background-position: left center;
        }
        15% {
            background-position: var(--animation-dire-from) center;
        }
        30% {
            background-position: var(--animation-dire-to) right;
        }
        45% {
            background-position: var(--animation-dire-from) center;
        }
        60% {
            background-position: var(--animation-dire-to) left;
        }
        75% {
            background-position: var(--animation-dire-from) center;
        }
        90% {
            background-position: var(--animation-dire-to) right;
        }
    }
</style>
<script>
    setInterval(function () {
        const [from, to] = Math.random() > 0.5 ? ["right", "right"] : Math.random() > 0.5 ? ["center", "left"] : ["right", "right"];
        $("#title").css("--animation-dire-from", from).css("--animation-dire-to", to);
    }, 10000);
</script>

</html>