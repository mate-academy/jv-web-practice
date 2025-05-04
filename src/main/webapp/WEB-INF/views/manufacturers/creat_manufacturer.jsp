<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>create manufacturer</title>
</head>
<body>
    <p>
        <c:if test="${name != null && country != null}">
            The manufacturer ${name} from ${country} was created!"
        </c:if>
    </p>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
        <p>
            <label for="name">Manufacturer's name:</label>
            <input type="text" id="name" name="name">
        </p>
        <p>
            <label for="country">Manufacturer's country:</label>
            <input type="text" id="country" name="country">
        </p>
        <button type="submit">CONFIRM</button>
    </form>
    <a href="${pageContext.request.contextPath}/">
        <button>BACK TO THE FUTURE</button>
    </a>
</body>
</html>
