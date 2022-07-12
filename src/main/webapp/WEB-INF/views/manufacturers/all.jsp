<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
    <h1>All manufacturers</h1>
    <table>
      <tr>
        <td>Manufacturer id</td>
        <td>Manufacturer name</td>
        <td>Manufacturer country</td>
      </tr>
      <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"></c:out></td>
            <td><c:out value="${manufacturer.name}"></c:out></td>
            <td><c:out value="${manufacturer.country}"></c:out></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete this manufacturer</a> </td>
        </tr>
      </c:forEach>
    </table>
</body>
</html>
