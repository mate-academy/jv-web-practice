<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>New driver</title>
</head>
<body>
<h2>Enter info of new driver</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/new">
    <label>
        Name:
        <input type="text" name="name"/>
    </label>
    <br/>
    <label>
        License number:
        <input type="text" name="license_number">
    </label>
    <br/>
    <button type="submit">Create</button>
</form>
</body>
</html>
