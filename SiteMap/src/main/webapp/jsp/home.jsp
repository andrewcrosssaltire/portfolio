<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">

    </head>
    <body>
        <div class="container">
            <h1 style="text-align: center">Software Craftmanship Guild Java Cohort</h1>
            <h2 style="text-align:center">JSP Site Lab</h2>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/luckySeven">Lucky Sevens</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/factorizor">Factorizor</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/interestCalc">Interest Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/flooringCalc">Flooring Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/tipCalc">Tip Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/converter">Unit Converter</a></li>
                </ul>    
            </div>
            <div>
                <p>
                <center>
                    In this lab, I have combined all of the web apps created in previous assignments for this unit<br>
                    into one single web application. The objective of this lab was to gain practice building multi-page sites <br>
                    that contain common navigation elements, headers,and footers on each page. 
                </center>                 
                </p>
            </div>
        </div>
        <div class="footer navbar-fixed-bottom">
            <footer>
                <p><center>
                    Created By: Andrew Cross 2016<br>
                    Powered by Java and Bootstrap
                </center></p>

            </footer>
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>
