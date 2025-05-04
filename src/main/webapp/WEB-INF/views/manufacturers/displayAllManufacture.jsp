<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Displaying all manufacturers </title>
</head>
<body>
<h1>
    List of manufacturers:
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
            <b>COUNTRY</b>
        </td>
        <td>
            <b>ACTION</b>
        </td>
    </tr>
    <jsp:useBean id="manufacturers" scope="request" type="java.util.List"/>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td style="text-align:center; padding: 15px">
                <c:out value="${manufacturer.id}"/>
            </td>
            <td style="text-align:center; padding: 15px">
                <c:out value="${manufacturer.name}"/>
            </td>
            <td style="text-align:center; padding: 15px">
                <c:out value="${manufacturer.country}"/>
            </td>
            <td style="text-align:center; padding: 15px">
                <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
<h1 style="font-size: 30px; text-align: center; padding-top: 30px">
    <a href="${pageContext.request.contextPath}/">BACK TO MAIN PAGE</a>
</h1>
</body>
</html>
