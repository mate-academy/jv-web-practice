<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Get all manufacturers</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <h1>List of manufacturers:</h1>
    </div>
    <div class="row">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">Name</th>
                <th scope="col">Country</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${manufacturers}" var="manufacturer">
                <tr>
                    <td><c:out value="${manufacturer.id}"/></td>
                    <td><c:out value="${manufacturer.name}"/></td>
                    <td><c:out value="${manufacturer.country}"/></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>

