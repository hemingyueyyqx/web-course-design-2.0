<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>新闻</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .container-fluid {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .contents {
            padding: 30px;
            flex: 1;
            /*box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/
            /*margin: 30px 0;*/
        }
        .contents h3 {
            text-align: center;
        }
        .detail {
            font-size: 16px;
            font-family: "Microsoft YaHei", serif;
            white-space: pre-wrap;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <%@include file="header.jsp"%>
<div class="contents">
    <h3>${new1.name}</h3>
    <p style="text-align: center">${new1.updateTime}</p>
    <pre class="detail">${new1.content}</pre>
</div>
    <%@include file="footer.jsp"%>
</div>
</body>
</html>
