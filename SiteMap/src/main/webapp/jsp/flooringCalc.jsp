<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Flooring Calculator</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">

    </head>
    <body>
        <div class="container">
            <h1>Flooring Calculator</h1>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/luckySeven">Lucky Sevens</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/factorizor">Factorizor</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/interestCalc">Interest Calculator</a></li>
                    <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/flooringCalc">Flooring Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/tipCalc">Tip Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/converter">Unit Converter</a></li>
                </ul>    
            </div>

            <form method=post action="fcresponse" class="form-horizontal" role="form">
                <div class="form-group">
                    <center>
                        <div class="col-md-12">
                            <div class="col-md-3"></div>
                            <label for="length" class="col-md-3">What is the length?</label>
                            <div class="col-md-3">
                                <input type="text" name="length" class="form-control" placeholder="Length"><br>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="col-md-3"></div>
                            <label for="width" class="col-md-3">What is the width?</label>
                            <div class="col-md-3">
                                <input type="text" name="width" class="form-control" placeholder="Width"><br>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="col-md-3"></div>
                            <label for="cost" class="col-md-3">What is the cost per 1 square foot?</label>
                            <div class="col-md-3">
                                <input type="text" name="cost" class="form-control" placeholder="Cost per square foot"><br>
                            </div>
                        </div>
                        <div class="col-md-12"></div>
                        <div class="col-md-12">   
                            <button type="sumbit" class="btn-btn-default">Get Floored</button>
                        </div>
                    </center>
                </div>
            </form>

        </div>
        <div class="footer navbar-fixed-bottom">
            <footer>
                <p><center>
                    Created By: Andrew Cross 2016<br>
                    Powered by Java and Bootstrap
                </center>
            </footer>
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>
