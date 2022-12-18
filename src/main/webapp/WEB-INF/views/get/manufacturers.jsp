<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
    <h2><i>List manufacturers</i></h2>
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Country</td>
        </tr>
        <jsp:useBean id="manufacturers" scope="request" type="java.util.List"/>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td> <c:out value="${manufacturer.id}"/> </td>
                <td> <c:out value="${manufacturer.name}"/> </td>
                <td> <c:out value="${manufacturer.country}"/> </td>
            </tr>
        </c:forEach>
    </table>
    <h3><i>Delete manufacturer by ID</i></h3>
    <form method="get" action="${pageContext.request.contextPath}/del/manufacturer">
        Manufacturer ID <label> <input type="number" name="manufacturer_id"> </label>
        <button type="submit">Delete</button>
    </form>
</body>
</html>
