<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a driver</title>
</head>
<body>
    <span style="font-family: monospace; color: #000000; "><h1>Please fill the form below</h1>

        <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            Name <input type="text" name="name"><br>
            License Number <input type="text" name="license_number"><br>
            <button type="submit"><span style="font-family: monospace; color: #000000; ">Add driver</span></button>
        </form>
    </span>
</body>
</html>
