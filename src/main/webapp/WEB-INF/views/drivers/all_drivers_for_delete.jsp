<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h2>List of driverss: </h2>
<section>
    <table>
        <thead>
        <tr>
            <th>Id </th>
            <th>Name </th>
            <th>License number </th>
            <th>Action </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="driver" items="${drivers}">
            <tr>
                <td><c:out value="${driver.id}"/> </td>
                <td><c:out value="${driver.name}"/> </td>
                <td><c:out value="${driver.licenseNumber}"/> </td>
                <td>
                    <a href="all_drivers_for_delete?id=${driver.id}">delete driver</a>
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
