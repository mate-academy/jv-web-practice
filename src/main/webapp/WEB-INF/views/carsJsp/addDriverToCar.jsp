<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Driver to Car</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        h1, h2 {
            text-align: center;
        }

        /* Стилі для форми і таблиць */
        .container {
            display: flex;
            justify-content: center;
        }

        .form-container {
            flex: 1;
            margin-right: 20px;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }

        .separator {
            border-top: 2px solid #007bff;
            margin: 20px 0;
        }
    </style>
</head>
<body>
<h1>Add Driver to Car</h1>

<div class="container">
    <div class="form-container">
        <form action="${pageContext.request.contextPath}/cars/drivers/add" method="post">
            <div class="form-group">
                <label for="car_id">Car:</label>
                <select id="car_id" name="car_id" required>
                    <option value="">Select a car</option>
                    <c:forEach items="${cars}" var="car">
                        <option value="${car.id}">${car.model}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="driver_id">Driver:</label>
                <select id="driver_id" name="driver_id" required>
                    <option value="">Select a driver</option>
                    <c:forEach items="${drivers}" var="driver">
                        <option value="${driver.id}">${driver.name}</option>
                    </c:forEach>
                </select>
            </div>
            <button type="submit">Add Driver to Car</button>
        </form>
    </div>
</div>
</body>
</html>









