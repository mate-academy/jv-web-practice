
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<h3>Create new manufacturer</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturer">
    <label>
        Manufacturer name
        <input type="text" name="name">
    </label><br>
    <label>
        Manufacturer country
        <input type="text" name="country">
    </label><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
