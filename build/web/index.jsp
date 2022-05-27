<%-- 
    Document   : index
    Created on : 11/05/2022, 11:09:59 AM
    Author     : Emily
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Weka Project</title>
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/styles.css"/>
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="icon" href="resources/icons/dia-nublado.png">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="index.jsp">
                <img src="resources/icons/dia-nublado.png" height="30" width="" alt="">
                <span id="brandOne">Weather</span><span id="brandTwo">Predition</span>
            </a>

            <!-- Links -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" title="View Data Set" data-toggle="modal" data-target="#dataSet">
                        <i class="fa fa-file-text fa-lg" aria-hidden="true"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" title="More Info" data-toggle="modal" data-target="#moreInfo">
                        <i class="fa fa-info-circle fa-lg" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
        </nav>
        
        <!-- Form Weather Predition -->
        <div class="container" id="contentBox">
            <form action="MyServlet" method="POST">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="form-group" id="contentTitle">
                            Will the weather be nice tomorrow?
                        </div>
                        <div class="form-group" id="contentText">
                            Fill in the form to find out if tomorrow will be a good day to go out and play!
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="outlook">Outlook:&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="How is the outlook today?"></i></label>
                                <select name="outlook" class="form-control" required>
                                    <option value="">Select an option</option>
                                    <option value="sunny">Sunny</option>
                                    <option value="overcast">Overcast</option>
                                    <option value="rainy">Rainy</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="temperature">Temperature:&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="What is the temperature?"></i></label>
                                <select name="temperature" class="form-control" required>
                                    <option value="">Select an option</option>
                                    <option value="hot">Hot</option>
                                    <option value="mild">Mild</option>
                                    <option value="cool">Cool</option>
                                </select>
                            </div>    
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="humidity">Humidity:&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="How is the humidity?"></i></label>
                                <select name="humidity" class="form-control" required>
                                    <option value="">Select an option</option>
                                    <option value="high">High</option>
                                    <option value="normal">Normal</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="">
                                <label for="windy">Windy:&nbsp;<i class="fa fa-info-circle" aria-hidden="true" title="Is it windy today?"></i></label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="windy" value="TRUE" required/>
                                    <label class="form-check-label" for="windyTrue">
                                        Yes
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="windy" value="FALSE" />
                                    <label class="form-check-label" for="windyFalse">
                                        No
                                    </label>
                                </div>
                            </div>    
                        </div>
                        <button type="submit" name="btnVerify" class="btn btn-info btn-block">Submit</button>
                    </div>
                </div>
            </form>
        </div>
        
        <!-- Data Set Modal -->
        <div class="modal fade" id="dataSet">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Data Set</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body" id="myData">
                        
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- More Info Modal -->
        <div class="modal fade" id="moreInfo">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">More Info</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="text-justify">
                            This is a Java Web program that uses the <i>J48 classification algorithm</i> 
                            and the data set <i>weather.nominal.arff</i> to predict if there will be good 
                            weather to go out and play.
                        </div>
                        <br>
                        <div>
                            <h6><b>Developed by</b></h6>
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Emily Vanegas <br> 
                            <i class="fa fa-check-circle" aria-hidden="true"></i> Camilo Ortiz
                        </div>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <script src="resources/js/script.js"></script>
    </body>
</html>
