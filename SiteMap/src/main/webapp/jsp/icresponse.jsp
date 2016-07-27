<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Interest Calculator</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">

    </head>
    <body>
        <div class="container">
            <h1>Interest Calculator Results</h1>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/luckySeven">Lucky Sevens</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/factorizor">Factorizor</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/interestCalc">Interest Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/flooringCalc">Flooring Calculator</a></li>
                    <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/tipCalc">Tip Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/converter">Unit Converter</a></li>
                </ul>    
            </div>
            <div><center>
                    The initial amount: ${param.start}<br>
                    The annual interest rate: ${param.rate}<br>
                    Years money will stay in fund: ${param.years}<br>
                    Compound Rate: ${param.compound}<br>
                    Summary: <br>
                    <c:forEach var="summary" items="${als}">
                        ${summary}<br>

                        <hr>
                    </c:forEach>
                </center>
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
    </body>
</html>
