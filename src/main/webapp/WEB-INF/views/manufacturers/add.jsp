<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create a manufacturer</title>
    <style><%@include file="/WEB-INF/style/main.css"%></style>
</head>
<body>
<div class="content">
    <h1>Please fill out the form below</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        <p>Name</p> <input type="text" name="name">
        <p>Country</p> <input type="text" name="country">
        <button type="submit">Create</button>
    </form>
</div>
</body>
</html>