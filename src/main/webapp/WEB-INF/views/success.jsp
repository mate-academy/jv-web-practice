<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all drivers</title>
    <style>
        body {
            background: #DFE2ED;
            font-family: Gilroy, Arial, sans-serif;
        }
        .center {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            padding: 10px;
            background: #E95C41;
            border-radius: 1rem;
            text-align: center;
        }
        h1, h3 {
            color: #ffffff;
        }
    </style>
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
</head>
<body>
<div class="center">
    <h1>Success!</h1>
    <a href="${pageContext.request.contextPath}/"><button>Main page</button></a>
</div>
</body>
</html>
