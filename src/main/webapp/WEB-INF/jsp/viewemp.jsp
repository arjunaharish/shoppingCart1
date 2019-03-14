    <style>
    #headerImages{
	width:1500px;
}
#amazon{
    margin-left: 17px;
    margin-top: -50px;
}

#list-group-item3{
top: -20px;
}
 
#example-search-input{
     top: -82px;
    right: 163px;
 }
 #searchBarButton{
        width: 30px;
       color:grey;
 }
 
 #search_concept{
     margin-left: -11px;
     color:grey;
 }
 
 #btndefaultSearchMagnifier{
     height: 34px;
 }
 .scrollable-menu{
  height: auto;
    max-height: 200px;
    overflow-x: hidden;
 }
 
 
    </style>
    
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url value="/css/loginTheme.css" var="loginTheme" />
	<h1>Employees List</h1>
	<table border="2" width="70%" cellpadding="2">
	<tr><th>Id</th><th>Name</th><th>Salary</th><th>Designation</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach var="emp" items="${list}"> 
    <tr>
    <td>${emp.id}</td>
    <td>${emp.name}</td>
    <td>${emp.salary}</td>
    <td>${emp.designation}</td>
    <td><a href="editemp/${emp.id}">Edit</a></td>
    <td><a href="deleteemp/${emp.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="empform">Add New Employee</a>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="loginTheme.css" media="screen" />

</head>
<body> 
 <h2>HTML Image</h2>
<div id="headerImages"class="container">
<div class="page-header">
  <h2>Basic Panel</h2>
  </div>
  <div id="headerImages" class="panel panel-default"><img src="https://images-na.ssl-images-amazon.com/images/G/01/airstream/upnav/T1/nav_merged_1x._CB472725852_.jpg" width= 1500px>
    <div class="panel-body">A Basic Panel</div>

  </div>
</div>
<div id="headerImages" class="panel panel-default" width= 1500px>
    <div class="panel-body"></div>
    <span class="nav-sprite nav-logo-base"></span>
    <div class="card" style="width: 2rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item"></li>
    <li class="list-group-item"></li>
    <li class="list-group-item"></li>
    <li id="list-group-item3" class="list-group-item"></li>
  </ul>
</div>
  </div>

<div id="amazon" class="panel panel-default1">
<ul class="list-group list-group-flush">
  <li id="amazon"><img src="https://d3iqwsql9z4qvn.cloudfront.net/wp-content/uploads/2017/05/18203729/Amazon-Logo-PNG.png" width= 57px></li>
  </ul>
</div>
<!--Search bar all drop down-->
<div class="container">
    <div class="row">    
        <div id="example-search-input" class="col-xs-8 col-xs-offset-2">
            <div class="input-group">
                <div class="input-group-btn search-panel">
                    <button id="searchBarButton"type="button" class="btn btn-default dropdown-toggle" placeholder="Disabled Input" data-toggle="dropdown" >
                        <span id="search_concept">All</span> <span class="caret"></span>
                    </button>
                  <ul class="dropdown-menu scrollable-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                </ul>
                </div>
                <input type="hidden" name="search_param" value="all" id="search_param">         
                <input type="text" class="form-control" name="x" placeholder="Search term...">
                <span class="input-group-btn">
                    <button id="btndefaultSearchMagnifier"class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                </span>
            </div>
        </div>
    </div>
</div>
</body>
</html>