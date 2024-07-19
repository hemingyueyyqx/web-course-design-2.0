<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <c:url var = "base" value = "/" />
  <base href="${base}">
  <title>teacher1</title>
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
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      min-height: 100vh;
      margin: 20px;
    }
    .contents h3 {
      text-align: center;
      margin: 10px;
    }
    .main {
      flex: 1;
      display: flex;
      align-items: flex-start;
    }
    #sidebar2 {
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      /* 容器宽度*/
      min-width: 200px;
      box-sizing: border-box;
      margin: 20px;
    }
    #sidebar2 h2 {
      margin: 0;
    }
    #sidebar2 h2 a {
      display: block;
      background: midnightblue;
      color: white;
      text-decoration: none;
      padding: 10px 20px;
    }
    #sidebar2 ul {
      margin: 0;
      padding: 0;
      background: #f1f1f1;
      list-style: none;
    }
    #sidebar2 li a {
      display: block;
      padding: 10px 15px;
      color: #000;
      text-decoration: none;
      transition: transform 0.5s;
    }
    #sidebar2 li a:hover {
      background: midnightblue;
      color: white;
      transform: scale(1.1);
    }
    .centered-image {
      display: block;
      margin-left: auto;
      margin-right: auto;
    }
    .detail {
      width: 100%;
      font-size: 16px;
      font-family: "Microsoft YaHei", serif;
      margin: 20px;
      white-space: pre-wrap;
      word-wrap: break-word;
    }
  </style>
</head>
<body>
<div class="container-fluid">
  <%@include file="header.jsp"%>
  <div class="main">
    <div id="sidebar2">
      <h2>
        <a>教师队伍</a>
      </h2>
      <ul>
        <li><a href="jsdw/jiaoshou">教授</a></li>
        <li><a href="jsdw/fujiaoshou">副教授</a></li>
        <li><a href="jsdw/jiangshi">讲师</a></li>
      </ul>
    </div>
    <div class="contents">


      <h2 style="text-align: center">单颖</h2>

      <img class="centered-image" src="resources/images/teacher9.jpg" alt="" width="400px" height="400px">

      <pre class="detail">
               单颖，博士，讲师，主要研究方向：软件工程，林业信息。参与科研项目多项，并发表相关论文。

所在学科：软件工程，软件工程（专业学位）
           </pre>
    </div>

  </div>
  <%@include file="footer.jsp"%>
</body>
</html>
