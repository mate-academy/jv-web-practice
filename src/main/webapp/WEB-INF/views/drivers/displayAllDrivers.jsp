<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h1>All drivers</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>License number</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value = "${driver.getId()}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><form method="get"
                      action ="${pageContext.request.contextPath}/drivers/delete">
                <button type="submit" name="id" value="${driver.getId()}">
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
      action ="${pageContext.request.contextPath}/drivers/add">
    <button type="submit">
        Add new driver
    </button>
</form>
</body>
</html>
