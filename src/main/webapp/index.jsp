<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>CEEE</title>
</head>
<body class="flex min-h-screen flex-col">
<jsp:include page="common/header.jsp"/>
<div class="m-auto flex flex-col">
    <h1 class="mb-4 flex-1 text-4xl font-extrabold leading-none tracking-tight text-gray-900 md:text-5xl lg:text-7xl">
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
    #title {
        background-size: 200% 200%;
        animation: 5s ease-in-out 0s infinite alternate gradient;
    }

    @keyframes gradient {
        0%, 100% {
            background-position: left center;
        }
        45% {
            background-position: center center;
        }
        65% {
            background-position: center right;
        }
    }
</style>
</html>