<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All manufacturers</title>
    <style><%@include file="/WEB-INF/style/display_all.css"%></style>
</head>
<body>
<div class="scroll-table">
    <h1>List of all manufacturers :</h1>
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Country</th>
        </tr>
        </thead>
    </table>
    <div class="scroll-table-body">
        <table>
            <tbody>
            <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}" /></td>
                <td><c:out value="${manufacturer.name}" /></td>
                <td><c:out value="${manufacturer.country}" /></td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<h1>Delete manufacturer by ID</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers">
    Id <input type="number" name="manufacturer_id">
    <button type="submit">Delete manufacturer</button>
</form>

</body>
</html>