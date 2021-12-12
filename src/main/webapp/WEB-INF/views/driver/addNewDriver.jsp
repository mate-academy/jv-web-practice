<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <title>Add new driver</title>
    </head>
    <body style="background-color: whitesmoke">
        <h1 style="text-decoration: none; color: dimgray">Add new driver</h1>
        <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            <table>
                <tr>
                    <td>Name :</td>
                    <td><label>
                        <input type="text" name="name" required>
                    </label></td>
                </tr>
                <tr>
                    <td>License number :</td>
                    <td><label>
                            <input type="text" name="licenceNumber" required>
                        </label></td>
                </tr>
                <tr>
                    <td><button type="submit">Register new driver</button></td>
                </tr>
            </table>
        </form>
    </body>
</html>
