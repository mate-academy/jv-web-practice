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
                <td><div style="text-align: center;">ID</div></td>
                <td><div style="text-align: center;">Name</div></td>
                <td><div style="text-align: center;">License Number</div></td>
                <td><div style="text-align: center;">DELETE</div></td>
            </tr>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <td><div style="text-align: center;"><c:out value="${driver.id}" /></div></td>
                    <td><div style="text-align: center;"><c:out value="${driver.name}" /></div></td>
                    <td><div style="text-align: center;"><c:out value="${driver.licenseNumber}" /></div></td>
                    <td><div style="text-align: center;"><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                        <span style="font-family: monospace; color: #000000; ">delete</span></a></div></td>
                </tr>
            </c:forEach>
        </table>
    </span>
</body>
</html>
