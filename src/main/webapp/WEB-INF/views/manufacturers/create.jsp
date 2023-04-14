<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<h1>Creating a new manufacturer</h1>
<p>Fill the form below</p>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
    Country <input TYPE="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
<form><button type="submit" formaction="/index">Home</button>  </form>
</body>
</html>