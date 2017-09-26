<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

	<!-- Access the bootstrap Css like this,
		Spring boot will handle the resource mapping automcatically -->
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

	<!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Spring Boot</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">

		<div class="starter-template">
			<h1>Spring Boot Web JSP Example</h1>
			<h2>Message: ${message}</h2>
			<a href="#" class="btn btn-info" role="button">Link Button</a>
			<button type="button" class="btn btn-info">Button</button>
			<input type="button" class="btn btn-info" value="Input Button">
			<input type="submit" class="btn btn-info" value="Submit Button">
		</div>
		<form>
	   <div class="form-group">
	     <label for="email">Email address:</label>
	     <input type="email" class="form-control" id="email">
	   </div>
	   <div class="form-group">
	     <label for="pwd">Password:</label>
	     <input type="password" class="form-control" id="pwd">
	   </div>
	   <div class="checkbox">
	     <label><input type="checkbox"> Remember me</label>
	   </div>
	   <button type="submit" class="btn btn-default">Submit</button>
	 </form> 


	</div>

	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
