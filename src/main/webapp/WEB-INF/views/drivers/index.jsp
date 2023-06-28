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
<h1>DRIVERS</h1>
<jsp:useBean id="drivers" scope="request" type="java.util.List"/>
<c:if test="${drivers.size() == 0}">
    <h3>There are no manufacturers yet...</h3>
</c:if>
<c:if test="${drivers.size() != 0}">
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}"/></td>
            <td><c:out value="${driver.getName()}"/></td>
            <td><c:out value="${driver.getLicenseNumber()}"/></td>
            <td class="delete-cell">
                <form action="${pageContext.request.contextPath}/drivers/delete"
                      method="post">
                    <label class="delete-label"><input type="text" name="driver"
                                                       value="${driver.getId()}"></label>

                    <button type="submit" class="delete-driver-btn">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</c:if>
</body>
</html>
