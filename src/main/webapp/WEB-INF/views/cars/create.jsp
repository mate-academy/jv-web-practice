<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h2><a href="/">Main page</a> </h2>
<h1>Welcome to create new car form!</h1>
<h3>Please insert data below:</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    ______________________Manufacturer id (see below form!)_____ <input type="text" name="manufacturer_id"><br>
    _(HINT: if know id not input!!!)_____ Manufacturer name_____ <input type="text" name="name"><br>
    _(HINT: if know id not input!!!)__ Manufacturer country_____ <input type="text" name="country"><br>
    _________________________________________________Model______ <input type="text" name="model"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
