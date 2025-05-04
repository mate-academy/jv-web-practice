<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
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
        button {
            margin-bottom: 5px;
        }
    </style>
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
</head>
<body>
<div class="center">
    <h1>Hello, mate!</h1>
    <h3>Select the action to be performed:</h3>
    <a href="${pageContext.request.contextPath}/manufacturers/create"><button>Create manufacturer</button></a>
    <a href="${pageContext.request.contextPath}/manufacturers"><button>Display manufacturers</button></a><br/>
    <a href="${pageContext.request.contextPath}/cars/create"><button>Create car</button></a>
    <a href="${pageContext.request.contextPath}/cars"><button>Display all cars</button></a><br/>
    <a href="${pageContext.request.contextPath}/drivers/create"><button>Add driver</button></a>
    <a href="${pageContext.request.contextPath}/cars/add"><button>Add driver to car</button></a>
    <a href="${pageContext.request.contextPath}/drivers"><button>Display all drivers</button></a>
</div>
</body>
</html>
