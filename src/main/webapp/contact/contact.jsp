<%--
  Created by IntelliJ IDEA.
  User: s201848020
  Date: 11/12/2022
  Time: 10:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Contact</title>
</head>
<body class="flex min-h-screen flex-col">
<jsp:include page="/common/header.jsp"/>
<div id="contact" class="mx-auto flex max-w-7xl flex-1 px-2 pb-6 sm:px-6 lg:px-8">
    <c:choose>
        <c:when test="${received}">
            <section class="m-auto bg-white">
                <div class="mx-auto max-w-screen-md px-4 py-8 lg:py-14">
                    <h2 class="mb-4 text-center text-4xl font-extrabold tracking-tight text-gray-900">
                        Thank You</h2>
                    <h4 class="mt-6 text-center font-light font-semibold tracking-tight text-gray-500 sm:text-xl md:text-2xl lg:mt-8 lg:mb-6">
                        We've Received Your Feedback</h4>
                    <h5 class="mt-4 text-center font-light font-semibold tracking-tight text-gray-500 sm:text-lg md:text-xl">
                        For further information, please do not hesitate to <a class="underline" href="mailto:ceee@kfupm.edu.sa">contact
                        us.</a>
                    </h5>
                </div>
            </section>
        </c:when>
        <c:otherwise>
            <section class="bg-white">
                <div class="mx-auto max-w-screen-md px-4 py-8 lg:py-14">
                    <h2 class="mb-4 text-center text-4xl font-extrabold tracking-tight text-gray-900">
                        Contact
                        Us</h2>
                    <h4 class="mx-8 mt-4 mb-6 text-center font-light font-semibold tracking-tight text-gray-500 sm:text-xl md:text-2xl lg:mt-8 lg:mb-10">
                        We'd Love to Hear From You</h4>
                    <form method="POST" id="contact-form" class="space-y-8">
                        <div>
                            <label for="email" class="mb-2 block text-sm font-medium text-gray-900">Your
                                email</label>
                            <input required maxlength="255" type="email" name="email" id="email" autocomplete="email"
                                   placeholder="name@email.com"
                                   class="mt-2 block w-full rounded-md border-2 border-gray-300 p-2 shadow-sm outline-none focus:border-cyan-500 focus:ring-cyan-500 sm:text-sm">
                        </div>
                        <div>
                            <label for="subject"
                                   class="mb-2 block text-sm font-medium text-gray-900">Subject</label>
                            <input maxlength="70" required type="text" name="subject" id="subject"
                                   placeholder="How we can help you"
                                   class="mt-2 block w-full rounded-md border-2 border-gray-300 p-2 shadow-sm outline-none focus:border-cyan-500 focus:ring-cyan-500 sm:text-sm">
                        </div>
                        <div class="sm:col-span-2">
                            <label for="message"
                                   class="mb-2 block text-sm font-medium text-gray-900">Your
                                message</label>
                            <textarea maxlength="1000" required id="message" name="message" rows="6"
                                      class="mt-2 block h-24 max-h-96 w-full rounded-md border-2 border-gray-300 p-2 shadow-sm outline-none focus:border-cyan-500 focus:ring-cyan-500 sm:text-sm"
                                      placeholder="Leave a comment..."></textarea>
                        </div>
                        <div id="submit-button" tabindex="0" aria-keyshortcuts="enter"
                             class="w-full mt-4 rounded border text-center place-self-center cursor-pointer border-cyan-400 bg-cyan-300 p-2.5 shadow-sm transition-transform duration-200 hover:scale-90">
                            Send message
                        </div>
                        <input type="submit" id="submit" hidden>
                    </form>
                </div>
            </section>
        </c:otherwise>
    </c:choose>
</div>
<script>
    if (window.history.replaceState) window.history.replaceState(null, null, window.location.href);
</script>
<script type="text/javascript" src="../contact/contact.js"></script>
<jsp:include page="/common/footer.jsp"/>
</body>
</html>
