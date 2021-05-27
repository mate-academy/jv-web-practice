<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show all drivers</title>
</head>
<body>

<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /> </td>
            <td><c:out value="${driver.name}" /> </td>
            <td><c:out value="${driver.licenseNumber}" /> </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
