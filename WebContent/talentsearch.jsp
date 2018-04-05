<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/index.jsp">KickStarter</a>
		</div>
		
		<div class="col-sm-3 col-md-3">
	        <form class="navbar-form" role="search">
	        <div class="input-group">
	            <input type="text" class="form-control" placeholder="Search" name="q">
	            <div class="input-group-btn">
	                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
	            </div>
	        </div>
	        </form>
    	</div>
		
		<div class="collapse navbar-collapse">
			<ur class="nav navbar-nav navbar-right">
				<li><a href="/index.jsp">Signed In As XXX</a></li>
	            <li><a href="/logout">Logout</a></li>
            </ur>
		</div>
	</div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-md-3">
	        <div style="width: 80%; margin-top: 100px;">
	            <form action="/login" method="POST">
	                <div class="form-group">
	                    <input class="form-control" type="text" name="category" placeholder="category">
	                </div>
	                <div class="form-group">
	                    <input class="form-control" type="text" name="subcategory" placeholder="subcategory">
	                </div>
	                <div class="form-group">
	                    <input class="form-control" type="text" name="location" placeholder="location">
	                </div>
	                <div class="form-group">
	                    <button class="btn btn-primary btn-md btn-block">search</button>
	                </div> 
	            </form>
	        </div>
        </div>
        
        <div class="col-md-9">
            <h1 style="text-align: center;">Here  is the data you found</h1>
        </div>
    </div>
</div>

</body>
</html>