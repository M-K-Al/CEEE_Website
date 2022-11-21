<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<nav class="bg-gray-100">
    <div class="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
        <div class="relative flex items-center justify-between">
<%--            <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">--%>
                <!-- Mobile menu button-->
<%--                <button type="button"--%>
<%--                        class="inline-flex items-center justify-center rounded-md p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white"--%>
<%--                        aria-controls="mobile-menu" aria-expanded="false">--%>
<%--                    <span class="sr-only">Open main menu</span>--%>
<%--                    <svg class="block h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"--%>
<%--                         aria-hidden="true">--%>
<%--                        <path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 12h16M4 18h16"></path>--%>
<%--                    </svg>--%>
<%--                    <svg class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"--%>
<%--                         stroke-width="2" stroke="currentColor" aria-hidden="true">--%>
<%--                        <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>--%>
<%--                    </svg>--%>
<%--                </button>--%>
<%--            </div>--%>

            <div class="flex items-center justify-center sm:items-stretch sm:justify-start">
                <div class="flex flex-shrink-0 items-center">
<%--                    <div class="select-none sm:items-stretch sm:justify-start">--%>
<%--                        <img class="pointer-events-none block w-16 mx-4"--%>
<%--                             src="../resources/logos/kfupm_logo_mini.svg"--%>
<%--                             alt="King Fahd University of Petroleum & Minerals">--%>
<%--                    </div>--%>
                    <a class="mb-4 flex items-center sm:mb-0" href="${pageContext.request.contextPath}/">
                        <img class="pointer-events-none block w-40 select-none" width="873" height="583"
                             src="../resources/logos/ceee_logo.png" alt="Center of Excellence in Energy Efficiency">
                    </a>
                </div>
                <div class="hidden self-center sm:ml-6 sm:block">
                    <div class="flex space-x-4">
                        <a href="projects"
                           class="rounded-md px-3 py-2 text-sm text-base font-medium text-gray-600 hover:text-black"
                           aria-current="page">Projects</a>
                    </div>
                </div>
            </div>

            <div class="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
                <div class="hidden sm:ml-6 sm:block">
                    <div class="flex items-center space-x-4">
                        <a href="${pageContext.request.contextPath}/login"
                           class="rounded-md px-3 py-2 text-sm text-base font-medium text-gray-600 hover:text-black"
                           aria-current="page">Login</a>
                        <div class="select-none sm:items-stretch sm:justify-start">
                            <img class="pointer-events-none block w-24"
                                 src="../resources/logos/saudi_vision_2030_logo.svg"
                                 alt="Kingdom of Saudi Arabia 2030 Vision">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>
