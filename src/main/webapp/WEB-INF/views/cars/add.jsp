<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New car</title>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<H1>Add new car</H1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <table>
        <tr>
            <td>Model</td>
            <td><input type="text" name="model"></td>
        </tr>
        <tr>
            <td>Manufacturer</td>
            <td><select name="manufacturerFromList">
                <c:forEach items="${manufacturers}" var="manufacturer">
                    <option nam e="id" value="${manufacturer.id}">${manufacturer.id}.
                            ${manufacturer.name}
                            ${manufacturer.country}</option>
                </c:forEach>
            </select></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button type="submit">Add</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
