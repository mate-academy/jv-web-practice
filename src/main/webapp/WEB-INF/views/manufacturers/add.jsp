<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label>Name</label><br>
    <label>
        <input type="text" name="name">
    </label><br>
    <label>Country</label><br>
    <label>
        <input type="text" name="country">
    </label><br>
    <button type="submit">Confirm</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/index">
    <button type="submit">Cancel</button>
</form>
</body>
</html>
