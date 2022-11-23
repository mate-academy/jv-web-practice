<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver</title>
</head>
<body>
    <div style="text-align: center; color: blue">
        <h1>
            Super form for create a Driver!
        </h1>
    </div>
    <form method="post" action="${pageContext.request.contextPath}/create">
        Name: <input type="text" name="name"><br>
        License number: <input type="text" name="license_number"><br>
        <button type="submit">Confirm</button>
    </form>

</body>
</html>
