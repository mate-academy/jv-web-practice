<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<br/>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
        <td>...</td>
        <td>...</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td valign="center"><c:out value="${car.getId()}"/></td>
            <td valign="center"><c:out value="${car.getModel()}"/></td>
            <td valign="center"><c:out value="${car.getManufacturer().getName()}"/></td>
            <td>
                <c:forEach items="${car.getDrivers()}" var="driver">
                    <c:out value="${driver.getName()}"/> <br>
                </c:forEach>
            </td>
            <td valign="center"><a href="${pageContext.request.contextPath}/cars/details?id=${car.getId()}">details</a></td>
            <td valign="center"><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">delete</a></td>
        </tr>
    </c:forEach>
    <br>
</table>
<a href="${pageContext.request.contextPath}/cars/add">new car</a>

</body>
</html>
