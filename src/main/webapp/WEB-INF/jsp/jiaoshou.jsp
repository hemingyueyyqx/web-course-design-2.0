<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>教授</title>
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
        /*.detail {*/
        /*    font-size: 16px;*/
        /*    font-family: "Microsoft YaHei", serif;*/
        /*}*/
        .row {
            display: flex;
        }
        .card {
            /*opacity: 0.5;*/
            width: 320px;
            padding: 20px;
            margin: 15px;
            text-align: center;
            transition: all 0.5s;
        }
        .card-header img {
            width: 100%;
            /*border-radius: 50%;*/
        }
        .card-content {
            display: none;
            text-align: justify;
            margin: 5px;
        }
        .card-header:hover + .card-content {
            display: block;
        }
        .card-footer .more {
            border-radius: 8px;
            padding: 5px 10px;
            text-decoration: none;
            color: white;
            display: inline-block;
            background-color: #e86464;

        }
        .card:hover {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            opacity: 1.0;
        }
        .card:hover .card-header img {
            opacity: 1.0;
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
            <div class="row">
                <div class="card">
                    <h2>李莉</h2>
                    <div class="card-header">
                        <img src="resources/images/teacher1.jpg" alt="" width="300px" height="300px">
                    </div>
                    <div class="card-content">
                        <p>
                            李莉，博士，教授，硕士生导师，东北林业大学青年成栋名师、软件工程专业主任、专业党支部书记。美国加州大学（河滨）访问学者。主持和参加国家级、省部级各类科研、教研项目15项，各级各类获奖10余项，作为第一作者发表SCI、EI、中文核心期刊等论文20余篇、主编教材4部。主持国家级一流本科课程、黑龙江省线上线下精品课程、东北林业大学一流本科课程、东北林业大学重点课程。获得第二届全国高校混合式教学设计创新大赛一等奖、华为产学合作专项奖；2次入选黑龙江省在线教学优秀案例；多次获得东北林业大学教学质量优秀奖、教学改革奖、教书育人先进个人称号。
                        </p>
                    </div>
                    <%--                        <div class="card-footer">--%>
                    <%--                            <a class="more" href="">Read More</a>--%>
                    <%--                        </div>--%>
                </div>
                <div class="card">
                    <h2>邱兆文</h2>
                    <div class="card-header">
                        <img src="resources/images/teacher2.jpg" alt=""  width="300px" height="300px">
                    </div>
                    <div class="card-content">
                        <p>
                            邱兆文，博士，教授，博士生导师。博士毕业于哈工大，美国卡内基梅隆大学访问学者。东北林业大学三维数字化技术研究所所长。黑龙江省医学影像三维可视化与3D打印工程技术中心主任。拓盟科技董事长。中国计算机学会（CCF）理事，CCF杰出会员，CCF计算机应用专委常务委员，CCF哈尔滨执行委员，中国抗癌协会人工智能专委委员。主要研究方向为人工智能、混合现实。主持参加国家自然科学基金、科技部中央引导地方重大专项基金等18项。国家发明专利5项。主编专著1部。在Nature Machine Intelligence（IF=25.898）等期刊发表SCI论文20篇，H-index为6。获省科技进步三等奖 2项，获省高等教育教学成果二等奖2项。2016年获第五届“中国创新创业大赛”互联网及移动互联网行业企业组第三名 。2020年获第四届“中国创翼”创业创新大赛全国三等奖。2018年入选科技部创新人才推进计划，2019年入选国家万人计划领军人才。2019年获黑龙江省十大杰出创业青年。2022年获第八届“黑龙江省优秀科技工作者”。2020年挑战杯竞赛国赛金奖指导教师。2021年“互联网+”大赛国赛银奖指导教师。哈工大客座教授。
                        </p>
                    </div>
                    <%--                        <div class="card-footer">--%>
                    <%--                            <a class="more"  href="">Read More</a>--%>
                    <%--                        </div>--%>
                </div>
                <div class="card">
                    <h2>赵玉茗</h2>
                    <div class="card-header">
                        <img src="resources/images/teacher3.jpg" alt=""  width="300px" height="300px">
                    </div>
                    <div class="card-content">
                        <p>
                            赵玉茗，博士，教授，博士生导师。主要研究方向：生物信息学、数据挖掘。中国计算机学会生物信息专委会委员。主持国家自然科学基金面上项目、国家自然科学基金青年基金项目、国家重点研发项目子课题、黑龙江省自然科学基金、林木遗传育种国家重点实验室开放基金、中央高校基本科研业务费专项基金项目等多项科研项目；获得东北林业大学青年教师授课大赛二等奖；主讲精品在线课程1门；获得专利5项；发表学术论文30余篇，其中EI、SCI收录10余篇，参与编写教材1部。美国Indiana University-Purdue University Indianapolis访问学者，美国The Johns Hopkins University博士后访问学者。
                            所在学科：林业工程（生物学）博导；计算机科学与技术（学硕及专业学位）硕导
                        </p>
                    </div>
                    <%--                        <div class="card-footer">--%>
                    <%--                            <a class="more"  href="">Read More</a>--%>
                    <%--                        </div>--%>
                </div>

            </div>
    </div>

</div>
        <%@include file="footer.jsp"%>
</body>
</html>
