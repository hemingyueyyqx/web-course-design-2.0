<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>软件工程专业研究生就业指南</title>
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
        .detail {
            font-size: 16px;
            font-family: "Microsoft YaHei", serif;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <%@include file="header.jsp"%>
    <div class="main">
        <div id="sidebar2">
            <h2>
                <a>就业指南</a>
            </h2>
            <ul>
                <li><a href="jyzn/benkesheng">本科生</a></li>
                <li><a href="jyzn/yanjiusheng">研究生</a></li>
            </ul>
        </div>
        <div class="contents">
            <h3>软件工程专业研究生就业指南</h3>
            <pre class="detail">
                1.软件架构师：

                职责：设计和评估软件系统架构，确保系统的性能、可靠性和扩展性。
                技能要求：深入理解分布式系统、微服务架构等；能够指导开发团队实现技术架构。
                就业前景：在大型企业或复杂项目中有广泛需求，通常需要丰富的实践经验和领导能力。

                2.数据科学家/分析师：

                职责：分析大数据集以提取有价值的信息和趋势，支持业务决策。。
                技能要求：熟练使用数据分析工具和编程语言（如Python、R）；理解机器学习和统计分析。
                就业前景：数据驱动的决策和预测分析在各行业中越来越重要，数据科学家的需求持续增长。

                3.信息安全专家：

                职责：设计和实施软件系统的安全措施，保护系统免受恶意攻击和数据泄露。
                技能要求：深入了解网络安全和加密技术；能够进行安全漏洞评估和风险管理。
                就业前景：随着网络犯罪和数据安全威胁的增加，信息安全专家的需求在增长。

                4.研发团队经理：

                职责：领导软件开发团队，管理项目进度、资源分配和团队协作。
                技能要求：优秀的领导和沟通能力；深刻的技术理解和项目管理经验。
                就业前景：在大型软件项目或跨国公司中，研发团队经理是关键的管理角色，需求稳定。

                5.学术研究员/教育工作者：

                职责：从事软件工程领域的学术研究或教学工作。
                技能要求：扎实的理论基础和研究方法论；对教育或学术研究有热情。
                就业前景：在大学、研究机构或高等教育中心担任教职或研究员，以及为产业培训新人才。</pre>
        </div>
    </div>
    <%@include file="footer.jsp"%>
</div>
</body>
</html>
