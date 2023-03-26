<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
    <h1><a href="${pageContext.request.contextPath}/">Taxi service</a></h1>
    <h2>All manufacturers</h2>
    <a href="${pageContext.request.contextPath}/manufacturers/add"><button>Create new manufacturer</button></a>
    <table border="1" style="width: 100%;">
        <tr>
            <td>id</td>
            <td>name</td>
            <td>country</td>
            <td></td>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}"/> </td>
                <td><c:out value="${manufacturer.name}"/></td>
                <td><c:out value="${manufacturer.country}"/></td>
                <form method="post" action="${pageContext.request.contextPath}/manufacturers">
                <td><button type="submit" name="deleteManufacturer" value="${manufacturer.id}">delete</button> </td>
                </form>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
