<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title style="text-align: center">Add manufacturer</title>
</head>
<body>
<br>
<h1>
    Create and add a new manufacturer:
</h1>
<br>
<br>
<form method="post" action="/manufacturers/create">
    Name <label>
    <input type="text" name="name">
</label>
    <br>
    <br>
    Country <label>
    <input type="text" name="country">
</label>
    <br>
    <br>
    <button type="submit">
        Add new manufacturer
    </button>
</form>
<h1>
    <a href="${pageContext.request.contextPath}/" style="color: grey; text-decoration: none">BACK TO MAIN PAGE</a>
</h1>
