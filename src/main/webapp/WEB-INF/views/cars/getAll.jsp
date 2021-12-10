<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<table border="1">
    <tr>
        <th colspan="4"><h1>List of cars</h1></th>
    </tr>
    <tr>
        <th style="width:10%">id</th>
        <th style="width:20%">model</th>
        <th style="width:20%">manufacturer</th>
        <th style="width:50%">drivers</th>
    </tr>
    <c:forEach items="${cars}" var="car">
    <tr>
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.model}"/></td>
        <td><c:out value="${car.manufacturer.name}"/></td>
        <td>
            <c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name}"/>
            </c:forEach>
        </td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
