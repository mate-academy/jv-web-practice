<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h2><a href="/index">Back to home page</a></h2>
<br>
<h2>
    Please indicate name and country for new manufacturer:
</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label for="manufacturerName">Manufacturer name</label><br>
    <input type="text" id="manufacturerName" name="manufacturerName"><br>
    <label for="manufacturerCountry">Manufacturer Country</label><br>
    <input type="text" id="manufacturerCountry" name="manufacturerCountry"><br><br>
    <input type="submit" value="Add manufacturer">
    <input type="reset">
</form>
</body>
</html>
