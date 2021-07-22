<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All cars</title>
    <style><%@include file="/WEB-INF/style/main.css"%></style>
</head>
<body>
<div class="content">
    <h1>List of all drivers :</h1>
    <table>
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>License number</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>