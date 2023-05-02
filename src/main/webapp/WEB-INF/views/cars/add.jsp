<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Car to Database</title>
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
    <h3>ADD CAR TO DATABASE FORM</h3>
    <form action="<c:url value="/index"/>" >
        <input type="submit" value="HOME" />
    </form>

    <form  method="post"  action="${pageContext.request.contextPath}/cars/add">
        <table style="with: 80%">
            <tr>
                <td>Model</td>
                <td><input type="text" id="model" name="model" required/></td>
            </tr>
            <tr>
                <td>Manufacturer ID</td>
                <td><input type="number" id="manufacturer_id" name="manufacturer_id" required/></td>
            </tr>
        </table>
        <button type="submit">SUBMIT</button><br>
    </form>
</div>
</body>
</html>
