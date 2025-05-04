<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Taxi service</title>
    </head>
    <body>
        <form method="post" id="redirect"></form>
        <h1 class="table">Taxi service</h1>
        <table class="table">
            <tr>
                <th>Redirect to</th>
            </tr>
            <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new driver</a></td></tr>
            <tr><td><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></td></tr>
            <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new manufacturer</a></td></tr>
            <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new car</a></td></tr>
            <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></td></tr>
        </table>
    </body>
</html>
