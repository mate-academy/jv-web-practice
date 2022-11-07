<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Add car page</title>
</head>
<body>
<h1>Please select manufacturer and write model name</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Manufacturer <select name="manufacturer">
    <c:forEach items="${countryNameList}" var="countryName">
    <optgroup label="${countryName.key}">
        <c:forEach items="${countryName.value}" var="name">
        <option><c:out value="${name}"/></option>
        </c:forEach>
    </c:forEach>
    </optgroup>
</select><br>
    Model <input type="text" name="model"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
