<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <title>Projects</title>
    <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.1/dist/flowbite.min.css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen flex flex-col">
<jsp:include page="../common/header.jsp"/>
<div class="flex-1 space-y-6 p-0 py-8 text-base leading-7 text-gray-600  flex justify-center">
    <ul class="bg-cyan-400x space-y-4">
        <li class="flex items-center">
            <div class="relative overflow-x-auto p-3 shadow-md sm:rounded-lg">
                <table class="w-full text-left text-sm text-gray-500 dark:text-gray-400">
                    <thead class="bg-gray-100 text-xs uppercase text-gray-700 dark:bg-gray-700 dark:text-gray-400">
                    <tr>
                        <th scope="col" class="py-3 px-6">ID</th>
                        <th scope="col" class="py-3 px-6">Project Title</th>
                        <th scope="col" class="py-3 px-6">Service Area</th>
                        <th scope="col" class="py-3 px-6">Client</th>
                        <th scope="col" colspan="2" class="py-3 text-center">Duration</th>
                        <th scope="col" class="py-3 px-6">Contact information</th>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th scope="col" class="pb-3 text-center">Start</th>
                        <th scope="col" class="pb-3 text-center">End</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${projects}" var="project" varStatus="loop">
                        <tr>
                            <td class="py-4 px-6">
                                <a href="project?id=${project.id}"
                                   class="text-blue-600 hover:text-blue-800 visited:text-purple-600 font-medium">
                                        ${project.id}
                                </a>
                            </td>
                            <td class="whitespace-nowrap py-4 px-6 text-gray-900 dark:text-white">${project.title}</td>
                            <td class="py-4 px-6">${project.serviceArea}</td>
                            <td class="py-4 px-6">${project.client}</td>
                            <td class="py-4 px-6">${project.durationStart}</td>
                            <td class="py-4 px-6">${project.durationEnd}</td>
                            <td class="py-4 px-6">${project.contactInformation}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <nav class="flex items-center justify-between pt-4" aria-label="Table navigation">
                    <span class="text-sm font-normal text-gray-500 dark:text-gray-400">Showing <span
                            class="font-semibold text-gray-900">${page * 10 - 9}-${page * 10 > projectsCount ? projectsCount : page * 10}</span> of <span
                            class="font-semibold text-gray-900">${projectsCount}</span></span>
                    <ul id="pagination-group" class="inline-flex items-center -space-x-px">
                        <li class="${page > 1 ? 'block' : 'hidden'}">
                            <a id="pagination-previous-button" href="?page=${page-1}"
                               class="ml-0 block rounded-l-lg border border-gray-300 bg-white py-2.5 px-3.5 leading-tight text-gray-500 hover:bg-gray-100 hover:text-gray-700 dark:border-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
                                <span class="sr-only">Previous</span>
                                <svg class="h-5 w-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                          d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
                                          clip-rule="evenodd"></path>
                                </svg>
                            </a>
                        </li>
                        <li class="${maxPages != 1 ? 'block' : 'hidden'}">
                            <a id="pagination-first-button" href="?page=1"
                               class="${paginationSelected == 1 ? 'pagination-selected' : ''} border border-gray-300 bg-white py-2.5 px-3.5 leading-tight text-gray-500 hover:bg-gray-100 hover:text-gray-700 dark:border-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">1</a>
                        </li>
                        <li class="${maxPages > 1 ? 'block' : 'hidden'}">
                            <a id="pagination-second-button" ${page < 4 ? "href=\"?page=2\"" : "" }
                               class="${paginationSelected == 2 ? 'pagination-selected' : ''} border border-gray-300 bg-white py-2.5 px-3.5 leading-tight text-gray-500 hover:bg-gray-100 hover:text-gray-700 dark:border-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">${paginationSecondButton}</a>
                        </li>
                        <li class="${maxPages > 2 ? 'block' : 'hidden'}">
                            <a id="pagination-third-button"
                               href="?page=${page < 4 ? 3 : page > maxPages - 3 ? maxPages-2 : page}"
                               class="${paginationSelected == 3 ? 'pagination-selected' : ''} border border-gray-300 bg-white py-2.5 px-3.5 leading-tight text-gray-500 hover:bg-gray-100 hover:text-gray-700 dark:border-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">${paginationThirdButton}</a>
                        </li>
                        <li class="${maxPages > 3 ? 'block' : 'hidden'}">
                            <a id="pagination-forth-button" ${page > maxPages - 4 ? "href=\"?page=" += maxPages-1 += "\"" : "" }
                               class="${paginationSelected == 4 ? 'pagination-selected' : ''} selected border border-gray-300 bg-white py-2.5 px-3.5 leading-tight text-gray-500 hover:bg-gray-100 hover:text-gray-700 dark:border-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">${paginationForthButton}</a>
                        </li>
                        <li class="${maxPages > 4 ? 'block' : 'hidden'}">
                            <a id="pagination-fifth-button" href="?page=${maxPages}"
                               class="${paginationSelected == 5 ? 'pagination-selected' : ''} border border-gray-300 bg-white py-2.5 px-3.5 leading-tight text-gray-500 hover:bg-gray-100 hover:text-gray-700 dark:border-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">${maxPages}</a>
                        </li>
                        <li class="${maxPages > page ? 'block' : 'hidden'}">
                            <a id="pagination-next-button" href="?page=${page+1}"
                               class="block rounded-r-lg border border-gray-300 bg-white py-2.5 px-3.5 leading-tight text-gray-500 hover:bg-gray-100 hover:text-gray-700 dark:border-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
                                <span class="sr-only">Next</span>
                                <svg class="h-5 w-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                          d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                                          clip-rule="evenodd"></path>
                                </svg>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </li>
    </ul>
</div>
<jsp:include page="../common/footer.jsp"/>
<script type="text/javascript" src="../projects/projects.js"></script>
</body>
</html>
