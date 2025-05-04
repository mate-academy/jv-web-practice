<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Choose action:</h1>
<ul>
    <li><a href="${pageContext.request.contextPath}/drivers/create"><button>Add driver</button></a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers/create"><button>Create manufacturer</button></a></li>
    <li><a href="${pageContext.request.contextPath}/cars/create"><button>Create car</button></a></li>
    <li><a href="${pageContext.request.contextPath}/cars/drivers/add"><button>Add driver to car</button></a></li>
    <li><a href="${pageContext.request.contextPath}/drivers"><button>Display all drivers</button></a></li>
</ul>
</body>
</html>
