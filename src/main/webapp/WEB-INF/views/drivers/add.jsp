<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Driver to Database</title>
    <style>
        html * {
            font-size: 16px;
            line-height: 1.625;
            color: #000000;
            font-family: Nunito, sans-serif;
        }
    </style>
</head>
<body bgcolor="#ffd700">
<div align="center">
    <h3>ADD DRIVER TO DATABASE FORM</h3>
    <form action="<c:url value="/index"/>" >
        <input type="submit" value="HOME" />
    </form>

    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        <table style="with: 80%">
            <tr>
                <td>Name</td>
                <td><input type="text" id="name" name="name" required/></td>
            </tr>
            <tr>
                <td>License Number</td>
                <td><input type="text" id="license_number" name="license_number" required/></td>
            </tr>
        </table>
        <button type="submit">SUBMIT</button><br>
    </form>
</div>
</body>
</html>
