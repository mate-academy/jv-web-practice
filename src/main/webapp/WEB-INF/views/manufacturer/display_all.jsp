<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturers list</title>
</head>
<body>
<h2>All manufacturers list</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers">
    <table>
        <tr>
            <td><b>ID</b></td>
            <td><b>Name</b></td>
            <td><b>Country</b></td>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}" /></td>
                <td><c:out value="${manufacturer.name}" /></td>
                <td><c:out value="${manufacturer.country}" /></td>
                <td>
                    <a href="${pageContext.request.contextPath}
                        /manufacturers/delete?id=${manufacturer.id}">Delete this manufacturer</a>
                </td>
            </tr>
        </c:forEach>
  </table>
  <br>
  <br>
  <a href="${pageContext.request.contextPath}/">Return to main menu</a>
  <br>
</form>
</body>
</html>
