<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers:</title>
</head>
<body>
<div style="align-content: center">
    <h1>Drivers list:</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>License number</td>
            <td>Action</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
                <td>
                    <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                        <button>Delete driver</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <br>
    <a href="${pageContext.request.contextPath}/"><button>Main page</button></a>
</div>
</body>
</html>
