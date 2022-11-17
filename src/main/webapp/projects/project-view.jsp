<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tw-elements/dist/css/index.min.css"/>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/highcharts-3d.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>${project.title}</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="mx-4 max-w-[92rem] md:mx-6 2xl:mx-auto">

    <%-------------------------------- breadcrumb --------------------------------%>

    <nav class="mx-16 my-6 flex" aria-label="Breadcrumb">
        <ol class="inline-flex items-center space-x-1 md:space-x-3">
            <li class="inline-flex items-center">
                <a href="index"
                   class="inline-flex items-center text-sm font-medium text-gray-700 hover:text-gray-900">
                    <svg class="mr-2 h-4 w-4" fill="currentColor" viewBox="0 0 20 20"
                         xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"></path>
                    </svg>
                    Home
                </a>
            </li>
            <li>
                <div class="flex items-center">
                    <svg class="h-6 w-6 text-gray-400" fill="currentColor" viewBox="0 0 20 20"
                         xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                              clip-rule="evenodd"></path>
                    </svg>
                    <a href="<%=request.getHeader("referer") == null ? "projects" : request.getHeader("referer")%>"
                       class="ml-1 text-sm font-medium text-gray-700 hover:text-gray-900">Projects</a>
                </div>
            </li>
            <li aria-current="page">
                <div class="flex items-center">
                    <svg class="h-6 w-6 text-gray-400" fill="currentColor" viewBox="0 0 20 20"
                         xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                              clip-rule="evenodd"></path>
                    </svg>
                    <span class="ml-1 text-sm font-medium text-gray-500">${project.title}</span>
                </div>
            </li>
        </ol>
    </nav>

    <div class="">

        <div class="lg:flex">

            <%-------------------------------- left-wing --------------------------------%>

            <div class="basis-3/5 pb-4">
                <div class="">
                    <div class="flex h-full flex-col overflow-hidden rounded-lg border-t bg-white shadow lg:min-w-4xl lg:mr-0">
                        <div class="px-4 py-5 sm:px-6">
                            <h3 class="text-lg font-medium leading-6 text-gray-900">${project.title}</h3>
                            <p class="mt-1 max-w-2xl text-sm text-gray-500">${project.id}</p>
                        </div>
                        <div class="flex flex-1 border-t border-gray-200">
                            <dl class="flex flex-1 flex-col">
                                <div class="flex-1 items-center bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                                    <dt class="text-sm font-medium text-gray-500">Service area</dt>
                                    <dd class="mt-1 text-sm text-gray-900 sm:col-span-2">${project.serviceArea}</dd>
                                </div>
                                <div class="flex-1 items-center bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                                    <dt class="text-sm font-medium text-gray-500">Client</dt>
                                    <dd class="mt-1 text-sm text-gray-900 sm:col-span-2">${project.client}</dd>
                                </div>
                                <div class="flex-1 items-center bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                                    <dt class="text-sm font-medium text-gray-500 sm:mb-5 lg:my-auto">Duration</dt>
                                    <div class="col-span-2 mt-2 border-b bg-white sm:flex">
                                        <div class="flex-1 px-4 py-3 md:flex">
                                            <dt class="text-sm font-medium text-gray-500">Start date</dt>
                                            <dd class="ml-2 text-sm text-gray-900">${project.durationStart}</dd>
                                        </div>
                                        <div class="flex-1 px-4 py-3 md:flex">
                                            <dt class="text-sm font-medium text-gray-500">Scheduled Completion</dt>
                                            <dd class="ml-2 text-sm text-gray-900">${project.durationEnd}</dd>
                                        </div>
                                    </div>

                                </div>
                                <div class="flex-1 items-center bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                                    <dt class="text-sm font-medium text-gray-500">Contact information</dt>
                                    <dd class="mt-1 text-sm text-gray-900 sm:col-span-2">${project.contactInformation}</dd>
                                </div>
                                <div class="flex-1 items-center bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                                    <dt class="text-sm font-medium text-gray-500">Description</dt>
                                    <dd class="mt-1 text-sm text-gray-900 sm:col-span-2">${project.description}</dd>
                                </div>
                                <div class="flex-1 items-center bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:px-6">
                                    <dt class="my-auto text-sm font-medium text-gray-500">Assessment
                                        recommendations
                                    </dt>
                                    <div class="text-sm text-gray-900 sm:col-span-2">
                                        <ul class="grid list-inside list-disc">
                                            <c:forEach items="${project.assessmentRecommendations}"
                                                       var="recommentation">
                                                <li class="mt-1 py-1 text-sm text-gray-900 sm:col-span-2">${recommentation}</li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>

            <%-------------------------------- right-wing --------------------------------%>

            <div class="basis-2/5 lg:mt-0 lg:ml-4">

                <%-------------------------------- carousel --------------------------------%>

                <div id="projectCarousel" class="relative group carousel slide" data-bs-ride="carousel">
                    <div class="absolute right-0 bottom-0 left-0 mb-2 flex justify-center p-0 carousel-indicators">
                        <button type="button" data-bs-target="#projectCarousel" data-bs-slide-to="0" class=""
                                aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#projectCarousel" data-bs-slide-to="1"
                                aria-label="Slide 2" class="active" aria-current="true"></button>
                        <button type="button" data-bs-target="#projectCarousel" data-bs-slide-to="2"
                                aria-label="Slide 3" class=""></button>
                    </div>
                    <div class="relative w-full overflow-hidden rounded-lg carousel-inner">
                        <div class="relative float-left w-full carousel-item">
                            <div class="relative overflow-hidden bg-cover bg-no-repeat">
                                <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(123).jpg"
                                     class="block w-full">
                                <div class="absolute top-0 right-0 bottom-0 left-0 h-full w-full overflow-hidden bg-black bg-fixed opacity-50"></div>
                            </div>
                        </div>
                        <div class="relative float-left w-full carousel-item active">
                            <div class="relative overflow-hidden bg-cover bg-no-repeat">
                                <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(124).jpg"
                                     class="block w-full">
                                <div class="absolute top-0 right-0 bottom-0 left-0 h-full w-full overflow-hidden bg-black bg-fixed opacity-50"></div>
                            </div>
                        </div>
                        <div class="relative float-left w-full carousel-item">
                            <div class="relative overflow-hidden bg-cover bg-no-repeat">
                                <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(125).jpg"
                                     class="block w-full">
                                <div class="absolute top-0 right-0 bottom-0 left-0 h-full w-full overflow-hidden bg-black bg-fixed opacity-50"></div>
                            </div>
                        </div>
                    </div>
                    <button class="absolute top-0 bottom-0 left-0 items-center justify-center border-0 p-0 text-center carousel-control-prev hover:no-underline hover:outline-none focus:no-underline focus:outline-none"
                            type="button" data-bs-target="#projectCarousel" data-bs-slide="prev">
                    <span class="inline-block bg-no-repeat opacity-0 transition-opacity duration-200 ease-in-out carousel-control-prev-icon group-hover:opacity-100"
                          aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="absolute top-0 right-0 bottom-0 items-center justify-center border-0 p-0 text-center carousel-control-next hover:no-underline hover:outline-none focus:no-underline focus:outline-none"
                            type="button" data-bs-target="#projectCarousel" data-bs-slide="next">
                    <span class="inline-block bg-no-repeat opacity-0 transition-opacity duration-200 ease-in-out carousel-control-next-icon group-hover:opacity-100"
                          aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>

                <%-------------------------------- EEM saving summary --------------------------------%>

                <div class="my-4 overflow-hidden rounded-lg border-t shadow">

                    <div class="px-4 py-5">
                        <h3 class="text-lg font-medium leading-6 text-gray-900">EEM Saving Summary</h3>
                    </div>

                    <div class="border-t border-gray-200 text-center">
                        <dl>
                            <%-------------------------------- table headings --------------------------------%>

                            <div class="flex items-center border-b bg-[#F0E0CE] bg-opacity-60 py-6 divide-x-2 divide-gray-500 text-sm font-bold text-gray-700">
                                <dt class="basis-1/2 p-1">EEM description</dt>
                                <dt class="basis-1/2 p-1">EEM estimation</dt>
                            </div>

                            <%-------------------------------- table data --------------------------------%>

                            <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                                <div class="flex basis-1/2 items-center">
                                    <dt class="basis-1/2 p-4">Total annual energy savings</dt>
                                    <div class="flex basis-1/2 flex-col">
                                        <dt class="basis-1/2 border-b pb-4">EEM description</dt>
                                        <dt class="basis-1/2 border-t pt-4">EEM description</dt>
                                    </div>
                                </div>
                                <div class="flex basis-1/2 flex-col">
                                    <dd class="basis-1/2 border-b pb-4">11</dd>
                                    <dd class="basis-1/2 border-t pt-4">11</dd>
                                </div>
                            </div>

                            <div class="flex items-center bg-gray-50 px-4 py-5 text-sm font-medium text-gray-600">
                                <dt class="basis-1/2 p-1">Total annual cost savings</dt>
                                <dd class="basis-1/2">19</dd>
                            </div>

                            <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                                <dt class="basis-1/2 p-1">Total cost of measures</dt>
                                <dd class="basis-1/2">21</dd>
                            </div>

                            <div class="flex items-center bg-gray-50 px-4 py-5 text-sm font-medium text-gray-600">
                                <dt class="basis-1/2 p-1">Percentage of Earnings</dt>
                                <dd class="basis-1/2">49</dd>
                            </div>

                            <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                                <dt class="basis-1/2 p-1">Payback period</dt>
                                <dd class="basis-1/2">88</dd>
                            </div>

                        </dl>
                    </div>
                </div>

            </div>
        </div>

        <div>
            <%-------------------------------- energy efficiency measures --------------------------------%>

            <div class="mb-4 overflow-hidden rounded-lg border-t shadow">

                <div class="px-4 py-5">
                    <h3 class="text-lg font-medium leading-6 text-gray-900">Energy Efficiency Measures</h3>
                </div>

                <div class="border-t border-gray-200 text-center">
                    <dl>
                        <%-------------------------------- table headings --------------------------------%>

                        <div class="flex items-center border-b bg-[#F0E0CE] bg-opacity-60 py-6 divide-x-2 divide-gray-500 text-sm font-bold text-gray-700">
                            <dt class="basis-1/12 p-1">EEM #</dt>
                            <dt class="basis-4/12 p-1">EEM Description</dt>
                            <dt class="basis-1/12 p-1">Annual Electricity Savings (kW)</dt>
                            <dt class="basis-1/12 p-1">Annual Electricity Savings (kWh)</dt>
                            <dt class="basis-1/12 p-1">% of Annual Saving with regard to Total kWh</dt>
                            <dt class="basis-1/12 p-1">CO<sup>2</sup>Emission Reduction (kg)</dt>
                            <dt class="basis-1/12 p-1">Annual Electricity Savings (SR)</dt>
                            <dt class="basis-2/12 p-1">Simple payback (yrs)</dt>
                        </div>

                        <%-------------------------------- table data --------------------------------%>

                        <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                            <dt class="basis-1/12">1</dt>
                            <dd class="basis-4/12">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</dd>
                            <dd class="basis-1/12">11</dd>
                            <dd class="basis-1/12">11</dd>
                            <dd class="basis-1/12">11</dd>
                            <dd class="basis-1/12">11</dd>
                            <dd class="basis-1/12">11</dd>
                            <dd class="basis-2/12">11</dd>
                        </div>
                        <div class="flex items-center bg-gray-50 px-4 py-5 text-sm font-medium text-gray-600">
                            <dt class="basis-1/12">2</dt>
                            <dd class="basis-4/12">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</dd>
                            <dd class="basis-1/12">19</dd>
                            <dd class="basis-1/12">19</dd>
                            <dd class="basis-1/12">19</dd>
                            <dd class="basis-1/12">19</dd>
                            <dd class="basis-1/12">19</dd>
                            <dd class="basis-2/12">19</dd>
                        </div>
                        <div class="flex items-center px-4 py-5 text-sm font-medium text-gray-600 bg-gray">
                            <dt class="basis-1/12">3</dt>
                            <dd class="basis-4/12">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</dd>
                            <dd class="basis-1/12">21</dd>
                            <dd class="basis-1/12">21</dd>
                            <dd class="basis-1/12">21</dd>
                            <dd class="basis-1/12">21</dd>
                            <dd class="basis-1/12">21</dd>
                            <dd class="basis-2/12">21</dd>
                        </div>
                        <div class="flex items-center bg-gray-50 px-4 py-5 text-sm font-medium text-gray-600">
                            <dt class="basis-1/12">4</dt>
                            <dd class="basis-4/12">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</dd>
                            <dd class="basis-1/12">49</dd>
                            <dd class="basis-1/12">49</dd>
                            <dd class="basis-1/12">49</dd>
                            <dd class="basis-1/12">49</dd>
                            <dd class="basis-1/12">49</dd>
                            <dd class="basis-2/12">49</dd>
                        </div>
                        <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                            <dt class="basis-1/12">5</dt>
                            <dd class="basis-4/12">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</dd>
                            <dd class="basis-1/12">88</dd>
                            <dd class="basis-1/12">88</dd>
                            <dd class="basis-1/12">88</dd>
                            <dd class="basis-1/12">88</dd>
                            <dd class="basis-1/12">88</dd>
                            <dd class="basis-2/12">88</dd>
                        </div>
                        <div class="flex items-center bg-gray-50 px-4 py-5 text-sm font-medium text-gray-600">
                            <dt class="basis-1/12">6</dt>
                            <dd class="basis-4/12">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</dd>
                            <dd class="basis-1/12">91</dd>
                            <dd class="basis-1/12">91</dd>
                            <dd class="basis-1/12">91</dd>
                            <dd class="basis-1/12">91</dd>
                            <dd class="basis-1/12">91</dd>
                            <dd class="basis-2/12">91</dd>
                        </div>
                        <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                            <dt class="basis-1/12">7</dt>
                            <dd class="basis-4/12">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</dd>
                            <dd class="basis-1/12">99</dd>
                            <dd class="basis-1/12">99</dd>
                            <dd class="basis-1/12">99</dd>
                            <dd class="basis-1/12">99</dd>
                            <dd class="basis-1/12">99</dd>
                            <dd class="basis-2/12">99</dd>
                        </div>
                    </dl>
                </div>
            </div>

            <div class="lg:flex">

                <%-------------------------------- findings --------------------------------%>

                <div class="basis-1/2 overflow-hidden rounded-lg border-t shadow">

                    <div class="px-4 py-5">
                        <h3 class="text-lg font-medium leading-6 text-gray-900">Findings</h3>
                    </div>

                    <div class="border-t border-gray-200 text-center">
                        <dl>
                            <%-------------------------------- table headings --------------------------------%>

                            <div class="flex items-center border-b bg-[#F0E0CE] bg-opacity-60 py-6 divide-x-2 divide-gray-500 text-sm font-bold text-gray-700">
                                <dt class="basis-7/12 p-1">Load / Consumption</dt>
                                <dt class="basis-3/12 p-1">Findings</dt>
                                <dt class="basis-2/12 p-1">Percentage</dt>
                            </div>

                            <%-------------------------------- table data --------------------------------%>

                            <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">Interior lighting load</dd>
                                <dd class="basis-3/12">11</dd>
                                <dd class="basis-2/12">11</dd>
                            </div>
                            <div class="flex items-center bg-gray-50 px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">Exterior lighting load</dd>
                                <dd class="basis-3/12">19</dd>
                                <dd class="basis-2/12">19</dd>
                            </div>
                            <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">Lighting load</dd>
                                <dd class="basis-3/12">21</dd>
                                <dd class="basis-2/12">21</dd>
                            </div>
                            <div class="flex items-center bg-gray-50 px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">Interior lighting consumption</dd>
                                <dd class="basis-3/12">49</dd>
                                <dd class="basis-2/12">49</dd>
                            </div>
                            <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">Exterior lighting consumption</dd>
                                <dd class="basis-3/12">88</dd>
                                <dd class="basis-2/12">88</dd>
                            </div>
                            <div class="flex items-center bg-gray-50 px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">Lighting electricity consumption</dd>
                                <dd class="basis-3/12">91</dd>
                                <dd class="basis-2/12">91</dd>
                            </div>
                            <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">Plug-in load electricity consumption</dd>
                                <dd class="basis-3/12">99</dd>
                                <dd class="basis-2/12">99</dd>
                            </div>
                            <div class="flex items-center bg-gray-50 px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">Lighting + Plug-in load electricity consumption</dd>
                                <dd class="basis-3/12">103</dd>
                                <dd class="basis-2/12">103</dd>
                            </div>
                            <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">HVAC electricity consumption</dd>
                                <dd class="basis-3/12">105</dd>
                                <dd class="basis-2/12">105</dd>
                            </div>
                            <div class="flex items-center bg-gray-50 px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">Total Electricity consumption before implementing EEM
                                </dd>
                                <dd class="basis-3/12">107</dd>
                                <dd class="basis-2/12">107</dd>
                            </div>
                            <div class="flex items-center bg-white px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">Electricity consumption after implementing EEM</dd>
                                <dd class="basis-3/12">133</dd>
                                <dd class="basis-2/12">133</dd>
                            </div>
                            <div class="flex items-center bg-gray-50 px-4 py-5 text-sm font-medium text-gray-600">
                                <dd class="basis-7/12 text-left">Annual energy saving expected after implementation of
                                    EEM
                                </dd>
                                <dd class="basis-3/12">196</dd>
                                <dd class="basis-2/12">196</dd>
                            </div>
                        </dl>
                    </div>
                </div>

                <%-------------------------------- estimated end-use electricity breakout --------------------------------%>

                <div class="basis-1/2 overflow-hidden rounded-lg border-t shadow mt-4 lg:mt-0 lg:ml-4 h-fit">
                    <div class="px-4 py-5">
                        <h3 class="text-lg font-medium leading-6 text-gray-900">Estimated End Use Electricity Breakout</h3>
                    </div>
                    <figure class="highcharts-figure border-t border-gray-200 py-6">
                        <div id="eeueb-chart"></div>
                    </figure>
                </div>

            </div>

        </div>
    </div>

    <div class="mb-10"></div>

</div>
<jsp:include page="../common/footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/index.min.js"></script>
<script type="text/javascript" src="../projects/project-view.js"></script>
</body>
</html>
