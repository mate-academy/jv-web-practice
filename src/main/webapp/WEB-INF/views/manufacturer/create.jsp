<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>New manufacturer</title>
</head>
<body>
<h2>Enter info of new manufacturer</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/new">
    <label>
        Name:
        <input type="text" name="name"/>
    </label>
    <br/>
    <label>
        Country:
        <input type="text" name="country">
    </label>
    <br/>
    <button type="submit">Create</button>
</form>
</body>
</html>
