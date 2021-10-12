<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Add driver</title>
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
<h1>Enter driver's info below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <label>
    <input type="text" name="name" required="required">
</label>
    License Number <label>
    <input type="text" name="license_number" required="required">
</label>
    <button type="submit">Add driver</button>
    <button type="reset">reset</button>
</form>
</body>
</html>
