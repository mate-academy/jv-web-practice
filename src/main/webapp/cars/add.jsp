<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Adding new car to database</h1>
<h2>Fill the fields below</h2>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    model <input type="text" name="model"><br>
    manufacturerId <input type="text" name="manufacturerId"><br>
    <button type="submit">Confirm</button>
</form>
<h1>${message}</h1>
</body>
</html>
