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
</head>
<body>
<div class="center">
    <h3>Choose the bottom:</h3>
    <a href="${pageContext.request.contextPath}/manufacturers/create"><button>Add manufacturer</button></a>
    <a href="${pageContext.request.contextPath}/manufacturers"><button>All manufacturers</button></a><br/>
    <a href="${pageContext.request.contextPath}/cars/create"><button>Add car</button></a>
    <a href="${pageContext.request.contextPath}/cars"><button>Display all cars</button></a><br/>
    <a href="${pageContext.request.contextPath}/drivers/create"><button>Add driver</button></a>
    <a href="${pageContext.request.contextPath}/cars/add"><button>Add driver to car</button></a>
    <a href="${pageContext.request.contextPath}/drivers"><button>All drivers</button></a>
</div>
</body>
</html>
