<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My taxi</title>
</head>
<body>
<h1>Hello, this is taxi service!</h1>
<form>
    <button type="submit" formaction="/cars/create">Create new car</button>
</form>
<form>
    <button type="submit" formaction="/drivers/create">Create new driver</button>
</form>
<form>
    <button type="submit" formaction="/manufacturers/create">Create new manufacturer</button>
</form>
<form>
    <button type="submit" formaction="/cars/drivers/add">Add drivers to car</button>
</form>
<form>
    <button type="submit" formaction="/drivers">All drivers</button>
</form>
<form>
    <button type="submit" formaction="/manufacturers">All manufacturers</button>
</form>
<form>
    <button type="submit" formaction="/cars">All cars</button>
</form>
</body>
</html>
