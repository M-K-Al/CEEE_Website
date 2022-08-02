<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <link href="../styles/tailwind.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.1/dist/flowbite.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tw-elements/dist/css/index.min.css"/>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>${project.title}</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="">
    <nav class="flex m-6 mx-16" aria-label="Breadcrumb">
        <ol class="inline-flex items-center space-x-1 md:space-x-3">
            <li class="inline-flex items-center">
                <a href="index"
                   class="inline-flex items-center text-sm font-medium text-gray-700 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white">
                    <svg class="w-4 h-4 mr-2" fill="currentColor" viewBox="0 0 20 20"
                         xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"></path>
                    </svg>
                    Home
                </a>
            </li>
            <li>
                <div class="flex items-center">
                    <svg class="w-6 h-6 text-gray-400" fill="currentColor" viewBox="0 0 20 20"
                         xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                              clip-rule="evenodd"></path>
                    </svg>
                    <a href="<%=request.getHeader("referer") == null ? "projects" : request.getHeader("referer")%>"
                       class="ml-1 text-sm font-medium text-gray-700 hover:text-gray-900 md:ml-2 dark:text-gray-400 dark:hover:text-white">Projects</a>
                </div>
            </li>
            <li aria-current="page">
                <div class="flex items-center">
                    <svg class="w-6 h-6 text-gray-400" fill="currentColor" viewBox="0 0 20 20"
                         xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                              clip-rule="evenodd"></path>
                    </svg>
                    <span class="ml-1 text-sm font-medium text-gray-500 md:ml-2 dark:text-gray-400">${project.title}</span>
                </div>
            </li>
        </ol>
    </nav>
    <div class="lg:flex">
        <div class="bg-white shadow overflow-hidden mx-6 my-4 border-t rounded-lg lg:max-w-3xl lg:mr-0">
            <div class="px-4 py-5 sm:px-6">
                <h3 class="text-lg leading-6 font-medium text-gray-900">${project.title}</h3>
                <p class="mt-1 max-w-2xl text-sm text-gray-500">${project.id}</p>
            </div>
            <div class="border-t border-gray-200">
                <dl>
                    <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">Service area</dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">${project.serviceArea}</dd>
                    </div>
                    <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">Client</dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">${project.client}</dd>
                    </div>
                    <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500 lg:my-auto sm:mb-5">Duration</dt>
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
                        <dt class="text-sm font-medium text-gray-500 my-auto">Assessment recommendations</dt>
                        <dd class="text-sm text-gray-900 sm:mt-0 sm:col-span-2">
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

        <div class="p-4 m-auto basis-[125%]">
            <div id="projectCarousel" class="carousel slide relative" data-bs-ride="carousel">
                <div class="carousel-indicators absolute right-0 bottom-0 left-0 flex justify-center p-0 mb-4">
                    <button type="button" data-bs-target="#projectCarousel" data-bs-slide-to="0" class=""
                            aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#projectCarousel" data-bs-slide-to="1"
                            aria-label="Slide 2" class="active" aria-current="true"></button>
                    <button type="button" data-bs-target="#projectCarousel" data-bs-slide-to="2"
                            aria-label="Slide 3" class=""></button>
                </div>
                <div class="carousel-inner relative w-full overflow-hidden rounded-lg">
                    <div class="carousel-item relative float-left w-full">
                        <div class="relative overflow-hidden bg-no-repeat bg-cover" style="background-position: 50%;">
                            <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(123).jpg" class="block w-full">
                            <div class="absolute top-0 right-0 bottom-0 left-0 w-full h-full overflow-hidden bg-fixed bg-black opacity-50"></div>
                        </div>
                        <div class="carousel-caption hidden md:block absolute text-center">
                            <h5 class="text-xl">First slide label</h5>
                            <p>Some representative placeholder content for the first slide.</p>
                        </div>
                    </div>
                    <div class="carousel-item relative float-left w-full active">
                        <div class="relative overflow-hidden bg-no-repeat bg-cover" style="background-position: 50%;">
                            <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(124).jpg" class="block w-full">
                            <div class="absolute top-0 right-0 bottom-0 left-0 w-full h-full overflow-hidden bg-fixed bg-black opacity-50"></div>
                        </div>
                        <div class="carousel-caption hidden md:block absolute text-center">
                            <h5 class="text-xl">Second slide label</h5>
                            <p>Some representative placeholder content for the second slide.</p>
                        </div>
                    </div>
                    <div class="carousel-item relative float-left w-full">
                        <div class="relative overflow-hidden bg-no-repeat bg-cover" style="background-position: 50%;">
                            <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(125).jpg" class="block w-full">
                            <div class="absolute top-0 right-0 bottom-0 left-0 w-full h-full overflow-hidden bg-fixed bg-black opacity-50"></div>
                        </div>
                        <div class="carousel-caption hidden md:block absolute text-center">
                            <h5 class="text-xl">Third slide label</h5>
                            <p>Some representative placeholder content for the third slide.</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev absolute top-0 bottom-0 flex items-center justify-center p-0 text-center border-0 hover:outline-none hover:no-underline focus:outline-none focus:no-underline left-0"
                        type="button" data-bs-target="#projectCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon inline-block bg-no-repeat" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next absolute top-0 bottom-0 flex items-center justify-center p-0 text-center border-0 hover:outline-none hover:no-underline focus:outline-none focus:no-underline right-0"
                        type="button" data-bs-target="#projectCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon inline-block bg-no-repeat" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/index.min.js"></script>
<script type="text/javascript" src="../projects/projects.js"></script>
</body>
</html>
