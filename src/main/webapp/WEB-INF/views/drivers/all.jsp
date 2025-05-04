<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Licence number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td>c:out value="${driver.id}" /></td>
            <td>c:out value="${driver.name}" /></td>
            <td>c:out value="${driver.licenseNumber}" /></td>
        </tr>
    </c:forEach>
</table>
<form method="get"
      action="${pageContext.request.contextPath}/index">
    <button type="submit">
        back to service
    </button>
</form>
</body>
</html>
