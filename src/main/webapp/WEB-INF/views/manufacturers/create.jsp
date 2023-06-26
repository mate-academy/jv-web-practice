<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Add manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label>
        <input type="text", placeholder="Name", name="name">
    </label>
    <label>
        <input type="text", placeholder="Country", name="country">
    </label>
    <button type="submit">Create</button>
</form>
</body>
</html>
