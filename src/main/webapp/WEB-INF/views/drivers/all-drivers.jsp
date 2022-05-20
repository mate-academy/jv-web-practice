<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
    <span style="font-family: monospace; color: #000000; "><h1>List of drivers:</h1>

        <table>
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>License Number</td>
            </tr>
            <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <td><c:out value="${driver.id}" /></td>
                    <td><c:out value="${driver.name}" /></td>
                    <td><c:out value="${driver.licenseNumber}" /></td>
                </tr>
            </c:forEach>
        </table>
    </span>
</body>
</html>
