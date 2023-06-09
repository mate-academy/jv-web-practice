<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/views/index.jsp" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h3>Add car</h3>
<c:if test="${fn:length(manufacturers) < 1}">
    There is no any manufacturer in DB. <br>
    You have to add at least one manufacturer at first!<br>
    <a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer now</a>
</c:if>
<c:if test="${fn:length(manufacturers) > 0}">
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        <table>
            <tr>
                <td>Choose manufacturer:</td>
                <td>
                    <select name="manufacturer">
                        <c:forEach items="${manufacturers}" var="manufacturer">
                            <option value="${manufacturer.id}">${manufacturer.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Model:</td><td><input type="text" name="model" required></td>
            </tr>
            <tr><td></td><td><input type="submit" value="Add car"></td></tr>
        </table>
    </form>
</c:if>
</body>
</html>
