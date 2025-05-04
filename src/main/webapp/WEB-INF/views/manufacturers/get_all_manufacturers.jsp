<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
    <style><%@include file="/WEB-INF/static/css/style.css"%></style>
</head>
<body>
<h2>List of manufacturers: </h2>
<section>
    <table>
        <thead>
        <tr>
            <th>Id </th>
            <th>Name </th>
            <th>Country </th>
            <th>Action </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="manufacturer" items="${manufacturers}">
            <tr>
                <td><c:out value="${manufacturer.id}"/> </td>
                <td><c:out value="${manufacturer.name}"/> </td>
                <td><c:out value="${manufacturer.country}"/> </td>
                <td>
                    <a href="manufacturers/delete?id=${manufacturer.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <br>
    <div>
        <a href="/">home</a>
    </div>
</section>
</body>
</html>
