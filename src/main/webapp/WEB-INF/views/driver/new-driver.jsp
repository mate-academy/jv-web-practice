<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>New Driver</title>
    </head>
<body>
    <h1>Enter driver parameters:</h1>
    <form method="post" action="${pageContext.request.contextPath}/driver/new"><br>
    Driver Name: <input type="text" name="driver_name"><br><br>
    Driver License Number: <input type="text" name="driver_license_number"><br><br>
    <button type="submit">Confirm</button>
    </form>
    <br>
    <h3><a href="${pageContext.request.contextPath}/">Back to menu</a></h3>
</body>
</html>