<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Unit Converter</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">

    </head>
    <body>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
        </script>
        <script>
            $(document).ready(function () {
                $('#unitCat').change(function () {
                    $(this).find("option:selected").each(function () {
                        if (this.value === "temperature") {
                            var options = "<option>Fahrenheit</option>";
                            options += "<option>Kelvin</option>";
                            $('#unitType').empty().append(options);

                        } else if (this.value === "miles/kilometers") {
                            var options = "<option>miles</option>";
                            options += "<option>kilometers</option>";
                            $('#unitType').empty().append(options);

                        } else if (this.value === "time") {
                            var options = "<option>days</option>";
                            options += "<option>seconds</option>";
                            $('#unitType').empty().append(options);

                        }
                        ;

                    });
                });
            });
        </script>
        <div class="container">
            <h1>Unit Converter</h1>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/luckySeven">Lucky Sevens</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/factorizor">Factorizor</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/interestCalc">Interest Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/flooringCalc">Flooring Calculator</a></li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/tipCalc">Tip Calculator</a></li>
                    <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/converter">Unit Converter</a></li>
                </ul>    
            </div>
            <div>
                <form method="post" action="csresponse" class="form-horizontal" role="form">   
                    <div class="form-group">
                        <center>
                            <div id="cat">
                                <div class="col-md-3"></div>
                                <label for="unitCat" class="col-md-3">Choose a type of conversion.</label>
                                <div class="col-md-3">
                                    <select class="form-control" name="unitCat" id="unitCat">
                                        <option>Pick one</option>
                                        <option value="temperature">Temperature</option>          
                                        <option value="miles/kilometers">Miles/Kilometers</option>
                                        <option value="time">Time</option>
                                    </select>
                                </div>
                            </div>
                            <div>&nbsp;</div>
                            <div>
                                <div class="col-md-6"></div>
                                <div class="col-md-3">
                                    <select class="form-control" name="unitType" id="unitType">
                                        <option>Pick a category first</option>
                                    </select>
                                </div>
                            </div>
                             <div>&nbsp;</div>
                            <div class="col-md-12">
                                <div class="col-md-3"></div>
                                <label for="userVal" class="col-md-3">Please enter a value:</label>
                                <div class="col-md-3">
                                    <input class="form-control" type="text" name="userVal">
                                </div>
                            </div>
                            <div>&nbsp;</div>
                            <div class="col-md-12">
                                <br><button type="submit" class="btn-btn-default">Convert</button>
                            </div>   
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
