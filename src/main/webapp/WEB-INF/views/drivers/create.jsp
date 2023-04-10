<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Create Driver</title>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
</head>
<body>
<div id="wb_Heading" style="position:absolute;left:139px;top:27px;width:523px;height:78px;z-index:5;">
    <h2 id="Heading">
        Fill bellow form to create new Driver and then to save press
        'Submit' button</h2>
</div>
<div id="wb_Form" style="position:absolute;left:133px;top:120px;width:534px;height:176px;z-index:6;">
    <form
            name="Driver_Form"
            method="post"
            action="/"
            enctype="multipart/form-data"
            accept-charset="UTF-8"
            target="_self"
            id="Form"
            onsubmit="">
        <input
                type="text"
                id="Editbox1"
                class="Editbox"
                style="position:absolute;left:222px;top:56px;width:190px;height:16px;z-index:0;"
                name="license_number"
                value=""
                spellcheck="false">
        <label
                for="Editbox1"
                id="Label1"
                class="Label"
                style="position:absolute;left:10px;top:15px;width:165px;height:16px;line-height:16px;z-index:1;">Input name of Driver</label>
        <input
                type="text"
                id="Editbox2"
                class="Editbox"
                style="position:absolute;left:222px;top:15px;width:190px;height:16px;z-index:2;"
                name="name"
                value=""
                spellcheck="false">
        <label
                for="Editbox2"
                id="Label2"
                class="Label"
                style="position:absolute;left:10px;top:56px;width:177px;height:16px;line-height:16px;z-index:3;">Input license number of Driver</label>
        <input
                type="submit"
                id="Button"
                class="Button"
                name="Button"
                value="Submit"
                style="position:absolute;left:219px;top:118px;width:96px;height:25px;z-index:4;">
    </form>
</div>
<div id="wb_Heading2" style="position:absolute;left:54px;top:305px;width:221px;height:32px;z-index:2;">
    <h5 id="Heading2">
        <a href="${pageContext.request.contextPath}/index">Return to start page</a>
    </h5>
</div>
</body>
</html>