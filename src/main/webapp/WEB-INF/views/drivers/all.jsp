<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<h1>List of gash drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
        </tr>
    </c:forEach>
</table>

<h1>Wanna delete driver?</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/delete">
    Enter id to delete: <input type="number" name="idToDelete">
    <button type="submit">Delete driver!</button>
</form>
<body>

</body>
</html>
