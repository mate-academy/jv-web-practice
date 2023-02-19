<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List of Manufacturers</h1>
<table>
    <tr>
        <td>Id</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacture">
        <tr>
            <td><c:out value="${manufacture.id}">id</c:out></td>
            <td><c:out value="${manufacture.name}">name</c:out></td>
            <td><c:out value="${manufacture.country}">country</c:out></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacture.id}">delete
                manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
