<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All drivers</title>
    <style><%@include file="/WEB-INF/style/display_all.css"%></style>
</head>
<body>
<div class="scroll-table">
    <h1>List of all drivers :</h1>
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>License number</th>
        </tr>
        </thead>
    </table>
    <div class="scroll-table-body">
        <table>
            <tbody>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <td><c:out value="${driver.id}" /></td>
                    <td><c:out value="${driver.name}" /></td>
                    <td><c:out value="${driver.licenseNumber}" /></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<h1>Delete driver by ID</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers">
    Id <input type="number" name="driver_id">
    <button type="submit">Delete driver</button>
</form>
</body>
</html>
