<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WEB PRACTICE</title>
    <style>
        <%@include file="/WEB-INF/css/style.css" %>
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/navbar/navbar.jsp" %>
<h1>MANUFACTURERS</h1>
<jsp:useBean id="manufacturers" scope="request" type="java.util.List"/>
<c:if test="${manufacturers.size() == 0}">
    <h3>There are no manufacturers yet...</h3>
</c:if>

<c:if test="${manufacturers.size() != 0}">
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>COUNTRY</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.getId()}"/></td>
                <td><c:out value="${manufacturer.getName()}"/></td>
                <td><c:out value="${manufacturer.getCountry()}"/></td>
                <td class="borderless">
                    <a class="delete-link" href="${pageContext.request
                        .contextPath}/manufacturers/delete?manufacturer=${manufacturer.getId()}">
                        Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
