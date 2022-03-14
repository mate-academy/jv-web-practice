<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add driver</title>
    </head>
    <body>
        <h2>Please, complete the form below, to add new car</h2>
        <form method="post" action="${pageContext.request.contextPath}/cars/add">
            <table>
                <tr>
                    <td>Car model:</td> <td><input type="text" name="model"></td>
                </tr>
                <tr>
                    <td>Car manufacturer id:</td> <td><input type="number" name="manufacturer_id"></td>
                </tr>
            </table>
                <button type="submit">Add new car</button>
        </form>
    </body>
</html>
