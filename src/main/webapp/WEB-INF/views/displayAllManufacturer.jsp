<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Get all Manufacturer</title>
</head>
<body>
<h1>List of manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Country</td>
        <td>Delete</td>
    </tr>
    <jsp:useBean id="manufacturers" scope="request" type="java.util.List"/>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.getId()}"/></td>
            <td><c:out value="${manufacturer.getName()}"/></td>
            <td><c:out value="${manufacturer.getCountry()}"/></td>
            <td>
                <button type="submit"><a type="button"
                        href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}"
                >Delete</a>
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
