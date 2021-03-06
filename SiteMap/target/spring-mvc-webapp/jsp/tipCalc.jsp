<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tip Calculator</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">

    </head>
    <body>
        <div class="container">
            <h1>Tip Calculator</h1>
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

            <div>


                <form class="form-horizontal" role="form" action="tcresponse" method="post">
                    <div class="form-group"><center>
                            <div class="col-md-3"></div>
                            <label for="amount" class="col-md-3">Bill Amount:</label>
                            <div class="col-md-3">
                                <input type="text" class="form-control" name="amount" placeholder="$$$"><br>
                            </div>
                            <div class="col-md-3"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-3"></div>
                            <label for="tip" class="col-md-3">Tip Percent:</label>
                            <div class="col-md-3">
                                <input type="text" class="form-control" name="tip" placeholder="%"><br>
                            </div>
                            <div class="col-md-3"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12">
                                
                                <button type="submit" class="btn-btn-default">Calculate Tip</button>
                            </div>
                            <!-- <input type="submit" value="Calculate Tip"> -->
                        </center>
                    </div>
                </form>
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
