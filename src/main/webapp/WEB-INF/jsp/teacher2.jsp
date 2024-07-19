<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>teacher2</title>
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


            <h2 style="text-align: center">邱兆文</h2>

            <img class="centered-image" src="resources/images/teacher2.jpg" alt="" width="400px" height="400px">

            <pre class="detail">

                邱兆文，博士，教授，博士生导师。博士毕业于哈工大，美国卡内基梅隆大学访问学者。东北林业大学三维数字化技术研究所所长。黑龙江省医学影像三维可视化与3D打印工程技术中心主任。拓盟科技董事长。中国计算机学会（CCF）理事，CCF杰出会员，CCF计算机应用专委常务委员，CCF哈尔滨执行委员，中国抗癌协会人工智能专委委员。主要研究方向为人工智能、混合现实。主持参加国家自然科学基金、科技部中央引导地方重大专项基金等18项。国家发明专利5项。主编专著1部。在Nature Machine Intelligence（IF=25.898）等期刊发表SCI论文20篇，H-index为6。获省科技进步三等奖 2项，获省高等教育教学成果二等奖2项。2016年获第五届“中国创新创业大赛”互联网及移动互联网行业企业组第三名 。2020年获第四届“中国创翼”创业创新大赛全国三等奖。2018年入选科技部创新人才推进计划，2019年入选国家万人计划领军人才。2019年获黑龙江省十大杰出创业青年。2022年获第八届“黑龙江省优秀科技工作者”。2020年挑战杯竞赛国赛金奖指导教师。2021年“互联网+”大赛国赛银奖指导教师。哈工大客座教授。

                所在学科：林业工程（林业信息工程）博导

                计算机应用技术、计算机技术（专业学位）硕导

                邮箱：qiuzw@nefu.edu.cn
            </pre>
        </div>

    </div>
    <%@include file="footer.jsp"%>
</body>
</html>
