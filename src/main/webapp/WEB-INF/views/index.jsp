<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
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
<div align="center ">
    <h1>TAXI SERVICE APP</h1>
    <h2>DRIVER MENU</h2>
    </form>
    <form action="<c:url value="/drivers/add"/>">
        <input type="submit" value="ADD DRIVER TO DATABASE"/>
    </form>
    </form>
    <form action="<c:url value="/cars/drivers/add"/>">
        <input type="submit" value="ADD DRIVER TO CAR"/>
    </form>
    <form action="<c:url value="/drivers/all"/>">
        <input type="submit" value="DISPLAY ALL DRIVERS"/>
    </form>
    <h2>MANUFACTURER MENU</h2>
    <form action="<c:url value="/manufacturers/add"/>">
        <input type="submit" value="ADD MANUFACTURER TO DATABASE"/>
    </form>
    <h2>CAR MENU</h2>
    <form action="<c:url value="/cars/add"/>">
        <input type="submit" value="ADD CAR TO DATABASE"/>
    </form>
</div>
</body>
</html>
