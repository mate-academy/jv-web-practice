<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
    <script type="text/javascript">
        function deleteManufacturer(id) {
            alert("Manufacturer #" + id + " was deleted")
        }
    </script>
</head>
<body>
<h1>List of manufacturers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.getId()}" /></td>
            <td><c:out value="${manufacturer.getName()}" /></td>
            <td><c:out value="${manufacturer.getCountry()}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?manufacturer_id=${manufacturer.getId()}">
                <button onclick="deleteManufacturer(${manufacturer.getId()})">Delete</button>
            </a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
