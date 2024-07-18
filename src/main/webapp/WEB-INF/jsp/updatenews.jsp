<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>添加新闻</title>
    <%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /*   * {*/
        /*       padding: 0;*/
        /*       margin: 0;*/
        /*       box-sizing: border-box;*/
        /*   }*/

        /*.register  {*/
        /*    background-color: #fff;*/
        /*    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/
        /*}*/
        /*.register h1 {*/
        /*    color: midnightblue;*/
        /*    text-align: center;*/
        /*}*/
        /*   .register input {*/
        /*       width: 100%;*/
        /*       padding: 10px;*/
        /*       margin: 20px;*/
        /*   }*/
        html,body {
            height: 100%;
            background: #fff;
            background-size: cover;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
</head>
<body>
<%--<div class="register">--%>
<%--    <h1>登录</h1>--%>
<%--    <form action="login" method="post">--%>
<%--        <input type="text" name="username" placeholder="用户名admin"> <br>--%>
<%--        <input type="password" name="password" placeholder="密码admin">--%>
<%--        <button type="submit">登录</button>--%>
<%--    </form>--%>
<%--</div>--%>
<div class="container h-100">
    <div class="container-fluid w-60">
        <form class="p-5  shadow-lg" action="jdbc/updatenews" method="post">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">id</label>
                <textarea name="id" id="exampleInputEmail1" style="width: 100%" readonly>
                    ${new1.id}
                </textarea>
                <%--        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">--%>
                <%--        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="head">--%>
                <%--        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--%>
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">标题</label>
                <textarea name="head" id="exampleInputEmail1" style="width: 100%" required>
                    ${new1.name}
                </textarea>
                <%--        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">--%>
                <%--        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="head">--%>
                <%--        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--%>
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">内容</label>
                <textarea name="content" id="exampleInputPassword1" style="width: 100%;height: 300px" required>
                    ${new1.content}
                </textarea>
                <%--        <input type="text" class="form-control" id="exampleInputPassword1" name="content">--%>
            </div>
            <div class="mb-3 form-check">
                <%--        <input type="checkbox" class="form-check-input" id="exampleCheck1">--%>
                <%--        <label class="form-check-label" for="exampleCheck1">Check me out</label>--%>
            </div>
            <button type="submit" class="btn btn-primary w-100">提交</button>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script>
    // function validateForm() {
    //     let name = document.getElementById('exampleInputEmail1').value;
    //     let content = document.getElementById('exampleInputPassword1').value;
    //
    //     if (name.trim() === '' || content.trim() === '') {
    //         alert('标题与内容均不能为空！');
    //         return false;
    //     }
    //     return true;
    // }
    // $(function () {
    // let button = $("button:submit");
    // button.prop("disabled",true);
    //
    // let nameValid = false;
    // $("textarea[name = head]").change(function () {
    //     let content = $(this).val().trim();//去空格后判断长度
    //     if(content.length ==0) {
    //         alert("新闻标题不能为空！");
    //     } else {nameValid = true;}
    // });
    // let contentValid = false;
    // $("textarea[name = content]").change(function () {
    //     let content = $(this).val().trim();//去空格后判断长度
    //     if(content.length ==0) {
    //         alert("新闻内容不能为空！");
    //     } else {contentValid = true;}
    // });
    // $("textarea[name = head], textarea[name = content]").change(function () {
    //     let dis2 = !(nameValid && contentValid);
    //     button.prop("disabled", dis2);
    // });
    // })
</script>
</body>
</html>
