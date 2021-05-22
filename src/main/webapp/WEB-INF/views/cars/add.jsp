<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add car</title>
    </head>
    <body>
        <h1>Please the form below</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/add">
            Car model <input type="" name="car_model" minlength="1" required><br>
            Manufacturer name <input type="text" name="manufacturer_name" minlength="1" required><br>
            Manufacturer country <input type="text" name="manufacturer_country" minlength="1" required><br>
            <button type="submit">Confirm</button>
        </form>
    </body>
</html>
