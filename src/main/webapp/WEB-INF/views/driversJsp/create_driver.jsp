<!DOCTYPE html>
<html>
<head>
    <title>Create Driver</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            text-align: center;
        }
        .form-container {
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
        .submit-button {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            width: 100%;
        }
        .submit-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>Create Driver</h1>
<div class="form-container">
    <form action="${pageContext.request.contextPath}/drivers/create" method="post">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required placeholder="Enter the driver's name">
        </div>

        <div class="form-group">
            <label for="license_number">License Number:</label>
            <input type="text" id="license_number" name="license_number" required placeholder="Enter the license number">
        </div>

        <button type="submit" class="submit-button">Create</button>
    </form>
</div>
</body>
</html>


