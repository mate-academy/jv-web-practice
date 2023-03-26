<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
    <h1><a href="${pageContext.request.contextPath}/">Taxi service</a></h1>
    <h2>All drivers</h2>
    <a href="${pageContext.request.contextPath}/drivers/add"><button>Create new driver</button></a>
    <table border="1" style="width: 100%;">
    <tr>
        <td>id</td>
        <td>name</td>
        <td>license number</td>
        <td></td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/drivers">
                    <button type="submit" name="deleteDriver" value="${driver.id}">delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
