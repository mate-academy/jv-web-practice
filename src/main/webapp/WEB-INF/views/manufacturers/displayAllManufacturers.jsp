<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Country</th>
    </tr>
    <c:forEach items="${manufacturers}" var ="manufacturer">
        <tr>
            <td><c:out value = "${manufacturer.getId()}"/></td>
            <td><c:out value = "${manufacturer.getName()}"/></td>
            <td><c:out value = "${manufacturer.getCountry()}"/></td>
            <td><form method="get"
                      action ="${pageContext.request.contextPath}/manufacturers/delete">
                <button type="submit" name="id" value="${manufacturer.getId()}">
                    Delete
                </button>
            </form>
            </td>
        </tr>
    </c:forEach>
</table>
<form method="get"
      action ="${pageContext.request.contextPath}/home">
    <button type="submit">
        Home
    </button>
</form>
<form method="get"
      action ="${pageContext.request.contextPath}/manufacturers/add">
    <button type="submit">
        Add new manufacturer
    </button>
</form>
</body>
</html>
