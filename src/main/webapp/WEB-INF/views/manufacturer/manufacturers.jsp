<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Taxi Service</title>
</head>
<body>
<h1>List of manufacturers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
        <form action="${pageContext.request.contextPath}/">
            <input type="submit" value="Go back main page">
        </form>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a></td>
          </tr>
    </c:forEach>
    <form action="${pageContext.request.contextPath}/manufacturers/add">
        <input type="submit" value="Add New Manufacturer">
    </form>
</table>
</body>
</html>
