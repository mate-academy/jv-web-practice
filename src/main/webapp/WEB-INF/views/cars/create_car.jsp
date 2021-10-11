<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>create car</title>
    <style type="text/css">

        button {
            border: blueviolet;
            border-radius: 7px;
            padding: 10px 25px;
            background: #BBAAAA;
            cursor: pointer;
            text-transform: uppercase;
            font-weight: bold;
            color: white;
        }
    </style>
</head>
<body>
<form action=index>
    <button>go to main menu</button>
</form>
<h1>Enter car's info below</h1>
<form method="post" action="${pageContext.request.contextPath}/create_car">
    Model <input type="text" name="model" required="required">
    Manufacturer <select name="manufacturer">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.getId()}">${manufacturer.getName()}</option>
    </c:forEach>
</select>
    <button type="submit">Add car</button>
</form>
</body>
</html>
