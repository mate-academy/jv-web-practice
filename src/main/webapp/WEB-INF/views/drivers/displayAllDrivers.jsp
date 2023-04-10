<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Displaying all drivers </title>
</head>
<body>
<h1>
    List of drivers:
</h1>
<table>
    <tr>
        <td>
            <b>ID</b>
        </td>
        <td>
            <b>NAME</b>
        </td>
        <td>
            <b>DRIVER LICENSE</b>
        </td>
        <td>
            <b>ACTION</b>
        </td>
    </tr>
    <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td>
                <c:out value="${driver.id}"/>
            </td>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
<h1 style=>
    <a href="${pageContext.request.contextPath}/" style="color: grey; text-decoration: none">BACK TO MAIN PAGE</a>
</h1>
</body>
</html>
