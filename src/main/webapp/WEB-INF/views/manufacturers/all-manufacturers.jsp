<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<span style="font-family: monospace; color: #000000; "><h1>List of manufacturers:</h1>

        <table>
            <tr>
                <td><div style="text-align: center;">ID</div></td>
                <td><div style="text-align: center;">Name</div></td>
                <td><div style="text-align: center;">Country</div></td>
                <td><div style="text-align: center;">DELETE</div></td>
            </tr>
            <c:forEach items="${manufacturers}" var="manufacturer">
                <tr>
                    <td><div style="text-align: center;"><c:out value="${manufacturer.id}" /></div></td>
                    <td><div style="text-align: center;"><c:out value="${manufacturer.name}" /></div></td>
                    <td><div style="text-align: center;"><c:out value="${manufacturer.country}" /></div></td>
                    <td><div style="text-align: center;"><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                        <span style="font-family: monospace; color: #000000; ">delete</span></a></div></td>
                </tr>
            </c:forEach>
        </table>
    </span>
</body>
</html>

