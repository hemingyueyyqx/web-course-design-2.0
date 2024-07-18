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


        /*.modal {*/
        /*    display: none;*/
        /*    position: fixed;*/
        /*    width: 100vw;*/
        /*    height: 100vw;*/
        /*    top: 0;*/
        /*    left: 0;*/
        /*    background: rgba(0,0,0,0.2);*/
        /*}*/
        /*.modal-dialog {*/
        /*    position: relative;*/
        /*    width: 450px;*/
        /*    margin: auto;*/
        /*    border-radius: 5px;*/
        /*    background-color: white;*/
        /*}*/
        /*.modal-dialog-header {*/
        /*    border-bottom: 1px solid beige;*/
        /*    padding: 8px;*/
        /*}*/
        /*.modal-dialog-content {*/
        /*    padding: 8px;*/
        /*    border-bottom: 1px solid beige;*/
        /*}*/
        /*.modal-dialog-footer {*/
        /*    text-align: right;*/
        /*    padding: 8px;*/
        /*}*/
        /*button {*/
        /*    padding: 5px 10px;*/
        /*    border: none;*/
        /*    border-radius: 5px;*/
        /*    cursor: pointer;*/
        /*}*/
        /*.button-success {*/
        /*    background-color: #3939de;*/
        /*    color: white;*/

        /*}*/
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="button">
        <a href="allnews" class="btn">查看全部新闻</a>
        <a href="allannouncements" class="btn">查看全部公告</a>
        <a href="addnews" class="btn">添加新闻</a>
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
            <c:forEach items="${news}" var="n">
                <tr>
                    <td>${n.id}</td>
                    <td>${n.name}</td>
                    <td>${n.updateTime}</td>
                    <td>
                        <a href="jdbc/getnews?newsid=${n.id}" class="btn1">详细</a>
                        <a href="jdbc/updatenews?newsid=${n.id}" class="btn1">更新</a>
                        <a href="jdbc/delnews?newsid=${n.id}" class="btn1">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%--<div class="container">--%>
<%--    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius minus nulla voluptas voluptatibus. Aliquid amet--%>
<%--        animi, dolor doloribus eius excepturi, fuga incidunt iure magnam, maxime necessitatibus nobis officiis possimus--%>
<%--        praesentium quam tenetur?<br>--%>
<%--        <button data-modal-target="modal-1">点击激活模态框</button>--%>
<%--    </p>--%>
<%--    <div class="modal" id="modal-1">--%>
<%--        <div class="modal-dialog">--%>
<%--            <div class="modal-dialog-header">--%>
<%--                <h2>Title</h2>--%>
<%--            </div>--%>
<%--            <div class="modal-dialog-content">--%>
<%--                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus, quibusdam.--%>
<%--            </div>--%>
<%--            <div class="modal-dialog-footer">--%>
<%--                <button data-modal-dismiss>Close</button>--%>
<%--                <button class="button-success">Save</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<%--<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.7.1/jquery.min.js"></script>--%>
<%--<script>--%>
<%--    let modal;--%>
<%--    $(function () {--%>
<%--        $("[data-modal-target]").click(function () {--%>
<%--            let modalId = $(this).data("modal-target");--%>
<%--            console.log(modalId);--%>
<%--            modal = $(`#${modalId}`);--%>
<%--            modal.fadeIn();--%>
<%--            modal.children(".modal-dialog").animate({top: "40px"})--%>
<%--        })--%>
<%--        $(".modal-dialog").click(() => false);--%>
<%--        $(".modal, [data-modal-dismiss]").click(() => {--%>
<%--            modal.fadeOut();--%>
<%--        })--%>
<%--    })--%>
<%--</script>--%>
</body>
</html>
