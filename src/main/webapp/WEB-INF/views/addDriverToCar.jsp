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
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            position: relative;
        }

        h1::after {
            content: "";
            display: block;
            position: absolute;
            bottom: -10px;
            left: 50%;
            width: 200px;
            height: 3px;
            background-color: #007bff;
            transform: translateX(-50%);
        }

        h2 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .container {
            display: flex;
            justify-content: center;
        }

        .table-container {
            margin: 0 20px;
            flex: 1;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"] {
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
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>Add Driver to Car</h1>

<div class="container">
    <!-- Left side: Cars table -->
    <div class="table-container">
        <h2>Cars</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Model</th>
            </tr>
            <c:forEach items="${cars}" var="car">
                <tr>
                    <td><c:out value="${car.id}"></c:out></td>
                    <td><c:out value="${car.model}"></c:out></td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <!-- Center: Add Driver to Car form -->
    <div class="table-container">
        <h2>Add Driver to Car</h2>
        <form action="${pageContext.request.contextPath}/cars/drivers/add" method="post">
            <div class="form-group">
                <label for="car_id">Car ID:</label>
                <input type="text" id="car_id" name="car_id" required>
            </div>
            <div class="form-group">
                <label for="driver_id">Driver ID:</label>
                <input type="text" id="driver_id" name="driver_id" required>
            </div>
            <button type="submit">Add Driver to Car</button>
        </form>
    </div>

    <!-- Right side: Drivers table -->
    <div class="table-container">
        <h2>Drivers</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
            </tr>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <td><c:out value="${driver.id}"></c:out></td>
                    <td><c:out value="${driver.name}"></c:out></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>


