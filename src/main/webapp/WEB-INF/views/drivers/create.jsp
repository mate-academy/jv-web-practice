
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
 <table>
     <tr>
         <td>Name: </td>
         <td><input type="text" name="name"></td>
     </tr>
     <tr>
         <td>LicenseNumber: </td>
         <td><input type="text" name="license_number"></td>
     </tr>
 </table>

    <button type="submit">Create driver</button>
</form>
</body>
</html>
