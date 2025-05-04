<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>TAXI 888</title>
        <style>
            .button {width: 150px}
        </style>
    </head>
    <body>
        <h2>Hello, mate!</h2>
        <p>What do you want to do?</p>
        <form action="${pageContext.request.contextPath}/drivers/all">
            <input class="button" type="submit" value="Show all drivers">
        </form>
        <form action="${pageContext.request.contextPath}/cars/all">
            <input class="button" type="submit" value="Show all cars">
        </form>
        <form action="${pageContext.request.contextPath}/manufacturers/all">
            <input class="button" type="submit" value="Show all manufactures">
        </form>
    </body>
</html>
