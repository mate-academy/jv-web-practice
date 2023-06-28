<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WEB PRACTICE</title>
    <style>
        <%@include file="/WEB-INF/css/style.css" %>
        <%@include file="./css/style.css" %>
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/navbar/navbar.jsp" %>
<h1>CARS</h1>
<jsp:useBean id="cars" scope="request" type="java.util.List"/>
<c:if test="${cars.size() == 0}">
    <h3>There are no cars...</h3>
</c:if>
<c:if test="${cars.size() != 0}">
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>MODEL</th>
            <th>MANUFACTURER</th>
            <th>DRIVERS</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.getId()}"/></td>
                <td><c:out value="${car.getModel()}"/></td>
                <td><c:out value="${car.getManufacturer().getName()}"/></td>
                <td>
                    <table>
                        <c:forEach items="${car.getDrivers()}" var="driver">
                            <tr>
                                <td class="car-driver-cell">
                                    <span>${driver.getName()}</span>
                                    <span>(${driver.getLicenseNumber()})</span>
                                </td>
                                <td class="delete-cell">
                                    <form
                                            action="${pageContext.request.contextPath}
                                            /cars/drivers/delete"
                                            method="post">
                                        <label class="delete-label">
                                            <input type="text" name="driver"
                                                   value="${driver.getId()}">
                                        </label>
                                        <label class="delete-label">
                                            <input type="text" name="car" value="${car.getId()}">
                                        </label>
                                        <button type="submit" class="delete-btn">X</button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </td>

                <td class="delete-cell">
                    <form action="${pageContext.request.contextPath}/cars/delete"
                          method="post">
                        <label class="delete-label">
                            <input type="text" name="car" value="${car.getId()}">
                        </label>
                        <button type="submit" class="delete-btn">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
