<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>add manufacturers</title>
</head>
  <body>
    <jsp:include page="../header.jsp"/>
    <div class="content">
      <form action="${pageContext.request.contextPath}/manufacturers/add" method="post">
        <label for="name">Name:</label>
        <input id="name" type="text">
        <label for="country">Country:</label>
        <input id="country" type="text">
        <input type="submit" value="add">
      </form>
    </div>
  </body>
</html>
