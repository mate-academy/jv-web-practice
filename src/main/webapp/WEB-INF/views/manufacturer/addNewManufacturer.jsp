<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Add new manufacturer</title>
  </head>
  <body style="background-color: whitesmoke">
    <h1 style="text-decoration: none; color: dimgray">Add new manufacturer</h1>
    <form method="post"  action="${pageContext.request.contextPath}/manufacturers/add">
      <table>
        <tr>
          <td>Name :</td>
          <td><label>
            <input type="text" name="name" required>
          </label></td>
        </tr>
        <tr>
          <td>Country :</td>
          <td><label>
            <input type="text" name="country" required>
          </label></td>
        </tr>
        <tr>
          <td><button type="submit">Add new manufacturer</button></td>
        </tr>
      </table>
    </form>
  </body>
</html>
