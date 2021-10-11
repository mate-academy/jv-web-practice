<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Add manufacturer</title>
    <style type="text/css">
        button {
            border: blueviolet;
            border-radius: 7px;
            padding: 10px 25px;
            background: #999999;
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
<h1>Enter manufacturer's info below</h1>
<form method="post" action="${pageContext.request.contextPath}/create_manufacturer">
    Manufacturer name <label>
    <input type="text" name="name" required="required">
</label>
    Country <label>
    <input type="text" name="country" required="required">
</label>
    <button type="submit">Add manufacturer</button>
    <button type="reset">reset</button>
</form>
</body>
</html>
