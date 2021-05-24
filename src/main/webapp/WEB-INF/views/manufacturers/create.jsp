<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a manufacturer</title>
</head>
<body>
<h1>Please fill the form to create a manufacturer</h1>
<form name="post" method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name of manufacturer: <input type="text" name="name"/> <br/>
    Country: <input type="text" name="country"/> <br/>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
