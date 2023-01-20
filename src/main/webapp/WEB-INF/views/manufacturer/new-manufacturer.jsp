<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>New Manufacturer</title>
    </head>
<body>
    <h1>Enter manufacturer parameters:</h1>
    <form method="post" action="${pageContext.request
    .contextPath}/manufacturer/new"><br>
    Manufacturer Name: <input type="text" name="manufacturer-name"><br><br>
    Manufacturer Country: <input type="text" name="manufacturer-country"><br><br>
    <button type="submit">Confirm</button>
    </form>
    <br>
    <h3><a href="${pageContext.request.contextPath}/">Back to menu</a></h3>
</body>
</html>