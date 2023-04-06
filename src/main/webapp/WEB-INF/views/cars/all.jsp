<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Cars</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>All cars:</h2>
    <table class="table">
        <tr>
            <td class="td">ID</td>
            <td class="td">MODEL</td>
            <td class="td">MANUFACTURER</td>
            <td class="td">DELETE</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td class="td"><c:out value="${car.id}" /></td>
                <td class="td"><c:out value="${car.model}" /></td>
                <td class="td"><c:out value="${car.manufacturer.name}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
