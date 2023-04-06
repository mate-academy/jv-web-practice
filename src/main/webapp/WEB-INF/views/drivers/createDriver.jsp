<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    body {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
    }
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
        background-color: #fff;
        color: #212529;
        font-size: 0.9rem;
        font-weight: 400;
        line-height: 1.6;
        border-radius: 0.25rem;
        box-shadow: 0 0.5rem 1rem rgba(0,0,0,0.15);
        padding: 1rem;
        width: 50%;
    }
    label {
        margin-bottom: 0.5rem;
        font-weight: 600;
        text-transform: uppercase;
        text-align: left;
        width: 100%;
    }
    input {
        margin-bottom: 1rem;
        padding: 0.375rem 0.75rem;
        border: 1px solid #ced4da;
        border-radius: 0.25rem;
        font-size: 1rem;
        line-height: 1.5;
        width: 100%;
    }
    button {
        display: inline-block;
        background-color: #007bff;
        border: none;
        color: #fff;
        padding: 0.375rem 0.75rem;
        border-radius: 0.25rem;
        cursor: pointer;
        text-decoration: none;
        text-align: center;
        white-space: nowrap;
    }
    button:hover {
        background-color: #0069d9;
    }
    h1 {
        font-family: Avenir, sans-serif;
        font-size:  1.25rem;
        font-weight: 600;
        text-align: center;
    }
</style>
<body>
<button style="background-color: #808080; color: #fff;"
        onclick="window.location.href='/'">
    Back to main menu
</button>
<h1>Fill the form to create the driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <label for="name">Name</label>
    <input type="text" id="name" name="name">
    <label for="license">License number</label>
    <input type="text" id="license" name="license">
    <button type="submit">Create</button>
</form>
<button style="background-color: #808080; color: #fff;"
        onclick="window.location.href='${pageContext.request.contextPath}/drivers'">
    List all drivers</button>
</body>
</html>
