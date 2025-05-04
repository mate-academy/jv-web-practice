<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h1>All drivers List:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Licence Number</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><form method="post" action="${pageContext.request.contextPath}/delete?id=${driver.id}&class=driver">
                <button type="submit">delete</button>
            </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
