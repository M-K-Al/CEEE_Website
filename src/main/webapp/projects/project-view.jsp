<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: mutae
  Date: 7/31/2022
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="flex">
    <div class="bg-white shadow overflow-hidden sm:rounded-lg max-w-5xl m-auto">

        <div class="px-4 py-5 sm:px-6">
            <h3 class="text-lg leading-6 font-medium text-gray-900">${project.title}</h3>
            <p class="mt-1 max-w-2xl text-sm text-gray-500">${project.id}</p>
        </div>
        <div class="border-t border-gray-200">
            <dl>
                <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">Service area</dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                        <fmt:formatNumber maxFractionDigits="2">${project.serviceArea}</fmt:formatNumber>
                    </dd>
                </div>
                <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">Client</dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">${project.client}</dd>
                </div>
                <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                    <dt class="mb-2 text-sm font-medium text-gray-500">Duration</dt>
                    <div class="bg-white px-4 py-3 sm:grid sm:grid-cols-3 sm:px-6 border-b">
                        <dt class="text-sm font-medium text-gray-500">Start date</dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">${project.durationStart}</dd>
                    </div>
                    <div class="bg-white px-4 py-3 sm:grid sm:grid-cols-3 sm:gap-20 sm:px-6 border-b">
                        <dt class="text-sm font-medium text-gray-500">Scheduled Completion</dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">${project.durationEnd}</dd>
                    </div>
                </div>
                <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">Contact information</dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">${project.contactInformation}</dd>
                </div>
                <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">Description</dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">${project.description}</dd>
                </div>
                <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                    <dt class="text-sm font-medium text-gray-500">Assessment recommendations</dt>
                    <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                        <ul class="grid list-inside list-disc">
                            <c:forEach items="${project.assessmentRecommendations}" var="recommentation">
                                <li class="mt-1 text-sm text-gray-900 py-1 sm:mt-0 sm:col-span-2">${recommentation}</li>
                            </c:forEach>
                        </ul>
                    </dd>
                </div>
            </dl>
        </div>
    </div>
</div>
<script type="text/javascript" src="../projects/projects.js"></script>
</body>
</html>
