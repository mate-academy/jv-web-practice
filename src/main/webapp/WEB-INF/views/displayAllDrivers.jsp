<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>List of taxi drivers: </title>
    </head>
    <body>
        <c:forEach items="${drivers}" var="driver">
            <c:out value="ID: ${driver.id}, "/>
            <c:out value="name: ${driver.name}, "/>
            <c:out value="license number: ${driver.licenseNumber}"/><br>
        </c:forEach>
    </body>
</html>
