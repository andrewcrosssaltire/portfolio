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
            <h1>Interest Calculator</h1>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/luckySeven">Lucky Sevens</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/factorizor">Factorizor</a></li>
                    <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/interestCalc">Interest Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/flooringCalc">Flooring Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/tipCalc">Tip Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/converter">Unit Converter</a></li>
                </ul>    
            </div>
            <div>
                <form method="post" action="icresponse" class="form-horizontal" role="form">
                    <div class="form-group">
                        <center>
                            <div class="col-md-12">
                                <div class="col-md-1"></div>
                                <label for="start" class="col-md-5">What is the initial investment amount?</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control" name="start" placeholder="$$$$$"><br>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-1"></div>
                                <label for="rate" class="col-md-5">What is the annual interest rate?</label>
                                <div class="col-md-3">
                                    <input type="text" class="form-control" name="rate" placeholder="%"><br>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div>
                                    <div class="col-md-1"></div>
                                    <label for="years" class="col-md-5">How many years will the money stay in the fund?</label>
                                    <div class="col-md-3">
                                        <input type="text" name="years" class="form-control" placeholder="Years in fund"><br>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div>
                                    <div class="col-md-1"></div>
                                    <label for="years" class="col-md-5">How often is the interest compounded?</label>
                                    <div class="col-md-3">
                                        <select name="compound" class="form-control">
                                            <option value="365">Daily</option>
                                            <option value="4">Quarterly</option>
                                            <option selected="selected" value="1">Yearly</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3"></div>
                                </div>
                            </div>
                            <div>     </div>
                            <div class="col-md-12">
                                <br><button type="sumbit" class="btn-btn-default">Get Interested</button>
                            </div>
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
