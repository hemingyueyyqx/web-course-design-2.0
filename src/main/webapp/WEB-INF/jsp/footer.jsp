<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>Title</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .footer {
            text-align: center;
            background-color: midnightblue;
            color: white;
        }

    </style>
</head>
<body>
<div class="footer">
       何明月
    <br>
<%--    <p>--%>
        东北林业大学
        <br />
        软件工程专业 2024&copy;
<%--    </p>--%>
</div>
</body>
</html>
