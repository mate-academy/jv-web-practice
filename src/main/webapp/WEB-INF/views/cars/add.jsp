<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New car</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<h1>
    New car <br/>
</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"> <br/>
    Select a Category:&nbsp;
    <select name="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.getId()}">${manufacturer.getName()}</option>
        </c:forEach>
    </select>
    <br/>
    <button type="submit">apply</button>
</form>
</body>
</html>
