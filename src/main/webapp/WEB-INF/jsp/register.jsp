<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>登录</title>
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
    <div class="container-fluid w-50">
<form class="p-5  shadow-lg" action="register" method="post">
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">用户名</label>
<%--        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">--%>
        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="username" required>
<%--        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--%>
    </div>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">密码</label>
        <input type="password" class="form-control" id="exampleInputPassword1" name="password" required>
    </div>
    <div class="mb-3 form-check">
<%--        <input type="checkbox" class="form-check-input" id="exampleCheck1">--%>
<%--        <label class="form-check-label" for="exampleCheck1">Check me out</label>--%>
    </div>
    <button type="submit" class="btn btn-primary w-100">登录</button>
</form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
