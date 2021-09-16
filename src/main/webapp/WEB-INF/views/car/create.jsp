<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Car creation</title>
</head>
<body>
<h2>Please fill form below for car creation</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <table>
        <tr>
            <td>Car model</td>
            <td>
                <input type="text" name="carModel">
            </td>
        </tr>
        <tr>
            <td>Manufacturer</td>
            <td align="right">
                <select name="manufacturerId">
                    <c:forEach items="${manufacturers}" var="manufacturer">
                        <option value="<c:out value="${manufacturer.id}" />">
                            <c:out value="${manufacturer.name}" /> /
                            <c:out value="${manufacturer.country}" />
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <button type="submit">Create car</button>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <a href="${pageContext.request.contextPath}/manufacturers/add">
        Please add manufacturer before adding a car if not available</a>
    <br>
    <br>
    <a href="${pageContext.request.contextPath}/">Return to main menu</a>
    <br>
</form>
</body>
</html>
