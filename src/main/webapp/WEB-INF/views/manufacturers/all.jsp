<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<h1>List of gash manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
        </tr>
    </c:forEach>
</table>

<h1>Wanna delete manufacturer?</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/delete">
    Enter id to delete: <input type="number" name="idToDelete">
    <button type="submit">Delete manufacturer!</button>
</form>
<body>

</body>
</html>
