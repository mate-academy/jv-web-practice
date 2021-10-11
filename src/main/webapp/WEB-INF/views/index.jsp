<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>taxi</title>
    <style type="text/css">
        button[name="run_script"] {
            border: none;
            border-radius: 7px;
            padding: 10px 25px;
            background: #ff9977;
            cursor: pointer;
            text-transform: uppercase;
            font-weight: bold;
            color: white;
        }
        button[name="run_script"]:hover {
            background: #ff6600;
        }
    </style>
</head>
<body>
<h1>Work with taxi service</h1>
<form action="get_cars"><button>WORK WITH CARS</button></form>
<form action="get_drivers"><button>WORK WITH DRIVERS</button></form>
<form action="get_manufacturers"><button>WORK WITH MANUFACTURERS</button></form>
</body>
</html>
