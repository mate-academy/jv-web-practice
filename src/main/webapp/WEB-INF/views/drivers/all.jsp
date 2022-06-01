<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h2>List of drivers: </h2>
<section>
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Licence number</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="driver" items="${drivers}">
            <tr>
                <td><c:out value="${driver.id}"/> </td>
                <td><c:out value="${driver.name}"/> </td>
                <td><c:out value="${driver.licenseNumber}"/> </td>
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
