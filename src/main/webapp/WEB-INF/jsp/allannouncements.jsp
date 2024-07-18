<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>后台</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .button {
            margin: 10px 0;
        }
        .btn {
            text-decoration: none;
            background: midnightblue;
            color: white;
        }
        .btn:hover {
            background: midnightblue;
            color: white;
        }

        .main {
            height: 100%;

        }
        table {
            border-collapse: collapse;
            width: 100%;
            table-layout: fixed;
        }
        th {
            background-color: green;
            color: white;
        }
        table th,
        table td {
            text-align: center;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        a.btn1 {
            background-color: rgb(211, 67, 67);
            color: white;
            padding: 10px 25px;
            text-decoration: none;
            display: inline-block;
            border-radius: 8px;
        }
        a.btn1:hover {
            background-color: red;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="button">
        <a href="allnews" class="btn">查看全部新闻</a>
        <a href="allannouncements" class="btn">查看全部公告</a>
        <a href="addannouncement" class="btn">添加公告</a>
        <a href="index" class="btn">返回首页</a>
    </div>
    <div class="main">
        <table>
            <thead>
            <tr>
                <th>id</th>
                <th>标题</th>
                <th>上传时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${announcements}" var="a">
                <tr>
                    <td>${a.id}</td>
                    <td>${a.name}</td>
                    <td>${a.updateTime}</td>
                    <td>
                        <a href="jdbc/getannouncement?announcementid=${a.id}" class="btn1">详细</a>
                        <a href="jdbc/updateannouncement?announcementid=${a.id}" class="btn1">更新</a>
                        <a href="jdbc/delannouncements?announcementid=${a.id}" class="btn1">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
