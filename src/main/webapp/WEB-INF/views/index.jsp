<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <h1>Hello, mates!</h1>
    </div>
    <div class="row"><h3>What do you want to do?</h3></div>
    <div class="row">
        <div class="col-sm-4">
            <h4>View all cars:</h4>
            <a href="car/all"><button class="btn btn-primary">View all cars</button></a>
        </div>
        <div class="col-sm-4">
            <h4>View all manufacturers:</h4>
            <a href="manufacturer/all"><button class="btn btn-primary">View all manufacturers</button></a>
        </div>
        <div class="col-sm-4">
            <h4>View all drivers:</h4>
            <a href="driver/all"><button class="btn btn-primary">View all drivers</button></a>
        </div>
    </div>
    <div class="row">
    </div>
    <div class="row">
        <div class="col-sm-4">
            <h4>Add new car:</h4>
            <a href="car/add"><button class="btn btn-primary">Add new car</button></a>
        </div>
        <div class="col-sm-4">
            <h4>Add new manufacturer:</h4>
            <a href="manufacturer/add"><button class="btn btn-primary">Add new manufacturer</button></a>
        </div>
        <div class="col-sm-4">
            <h4>Add new driver:</h4>
            <a href="driver/add"><button class="btn btn-primary">Add new driver</button></a>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <h4>Add driver to car:</h4>
            <a href="car/driver/add"><button class="btn btn-primary">Add driver to car</button></a>
        </div>
    </div>
</div>
</body>
</html>