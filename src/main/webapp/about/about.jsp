<%--
  Created by IntelliJ IDEA.
  User: s201848020
  Date: 11/12/2022
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>About</title>
</head>
<body class="flex min-h-screen flex-col">
<jsp:include page="/common/header.jsp"/>
<div id="about" class="mx-6 mt-6 flex max-w-7xl flex-1 flex-col lg:mx-8 2xl:mx-auto">
    <h3 class="my-6 text-3xl font-semibold leading-none text-gray-900">
        History</h3>

    <p class="text-lg text-gray-500">KFUPM’s Center of Excellence in Energy Efficiency (CEEE) aspires
        to be an interdisciplinary research institute
        committed to increasing energy efficiency in line with The Kingdom’s Vision 2030, helping to reduce the
        environmental impact of carbon while also making a positive economic impact in KSA.
    </p>

    <br />

    <p class="text-lg text-gray-500">The CEEE was established
        with a noble grant from the King Abdulaziz City for Science and Technology (KACST), as an initiative under the
        Saudi Energy Center (SEEC), as the first university-based energy efficiency center in the Kingdom of Saudi
        Arabia to focus on the dissemination of knowledge, and transfer of energy efficient technology into the
        marketplace.</p>

</div>

<jsp:include page="/common/footer.jsp"/>
</body>
</html>

