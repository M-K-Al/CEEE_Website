<%--
  Created by IntelliJ IDEA.
  User: s201848020
  Date: 11/12/2022
  Time: 6:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<footer class="bg-gray-50 px-8 py-4 isolate shadow">
    <div class="flex items-center justify-between max-w-7xl mx-auto px-2 sm:px-6 lg:px-8">
        <%--suppress HttpUrlsUsage --%>
        <a href="http://www.kfupm.edu.sa" target=”_blank” class="flex items-center">
            <img src="../resources/logos/kfupm_logo_mini.svg" class="pointer-events-none mr-3 h-8 select-none"
                 alt="KFUPM Logo">
            <span class="self-center whitespace-nowrap text-2xl font-semibold">RI, KFUPM</span>
        </a>
        <ul class="flex flex-wrap items-center text-sm text-gray-500">
            <li>
                <a href="${pageContext.request.contextPath}/about" class="mr-4 hover:underline md:mr-6">About</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/privacyPolicy" class="mr-4 hover:underline md:mr-6">Privacy
                    Policy</a>
            </li>
            <%--            <li>--%>
            <%--                <a href="#" class="mr-4 hover:underline md:mr-6">Terms & Conditions</a>--%>
            <%--            </li>--%>
            <li>
                <a href="${pageContext.request.contextPath}/contact" class="hover:underline">Contact Us</a>
            </li>
        </ul>
    </div>
    <hr class="my-2 border-gray-200 sm:mx-auto lg:my-4">
    <span class="block p-1 text-gray-500 text-sm sm:text-center">
        © 2022 CEEE. All Rights Reserved.
    </span>
</footer>
