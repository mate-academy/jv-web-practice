<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add driver</title>
    </head>
    <body>
        <h1>Please the form below, to add new driver</h1>
        <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            <table>
                <tr>
                    <td>Driver name:</td> <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Driver license number:</td> <td><input type="text" name="license_number"></td>
                </tr>
            </table>
                <button type="submit">Submit</button>
        </form>
    </body>
</html>
