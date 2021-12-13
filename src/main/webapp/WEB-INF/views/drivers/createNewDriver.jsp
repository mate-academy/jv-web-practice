<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Create new driver</title>
    </head>
    <body>
        <form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
        <h1 class="table">driver:</h1>
        <table border="1" class="table">
            <tr>
                <th>Name</th>
                <th>License Number</th>
                <th>Add</th>
            </tr>
            <tr>
                <td>
                    <input type="text" name="name" form="driver" required>
                </td>
                <td>
                    <input type="text" name="license_number" form="driver" required>
                </td>
                <td>
                    <input type="submit" name="add" form="driver">
                </td>
            </tr>
        </table>
        <a href="${pageContext.request.contextPath}/">
            <button>Main page</button>
        </a>
    </body>
</html>