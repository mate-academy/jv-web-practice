<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Creating a driver</title>
    <style><%@include file="/WEB-INF/style/main.css"%></style>
</head>
<body>
<div class="content">
    <h1>Fill out the form:</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        <p>Name</p>
        <input type="text" name="name">
        <p>License number</p>
        <input type="text" name="license_number">
        <br>
        <button type="submit">Create</button>
    </form>
</div>

</body>
</html>
