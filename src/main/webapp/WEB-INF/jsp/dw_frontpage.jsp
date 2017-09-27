<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
	<c:url var="home" value="${backendurl}" scope="request" />

	<!-- Access the bootstrap Css like this,
		Spring boot will handle the resource mapping automcatically -->
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

	<script type="text/javascript" src="webjars/jquery/2.2.4/jquery.min.js"></script>
	<!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
	<div class="container">
		<h3>DonnerWetter Web UI</h3>
		<h4>Search for the temperature information</h4>
		<h4>around the world. Set the city and country</h4>
		<h4>and press Submit</h4>
		<h5>For the U.S. locations use the state abbreviation</h5>
		<h5>as the country.</h5>
		<form id="search-form">
	   <div class="form-group">
	     <label for="City">City:</label>
	     <input type="City" class="form-control" id="City">
	   </div>
	   <div class="form-group">
	     <label for="Country">Country:</label>
	     <input type="Country" class="form-control" id="Country">
	   </div>
	   <button type="submit" class="btn btn-default" id="btn-search">Submit</button>
		 <div id="feedback"></div>
	 </form>


	</div>
	<script type="text/javascript">

	jQuery(document).ready(function($) {
		$("#search-form").submit(function(event) {
			// Disble the search button
			enableSearchButton(false);
			// Prevent the form from submitting via the browser.
			event.preventDefault();
			searchViaAjax();
		});

	});

		function searchViaAjax() {
			var city = $("#City").val();
			var country = $("#Country").val();

			$.ajax({
				type : "GET",
				//crossDomain: true,
				url : "${home}",
				data : {"city" : city, "country" : country},
				async: true,
				timeout : 100000,
				success : function(data) {
					console.log("SUCCESS: ", data);
					display(data);
				},
				error : function(e) {
					console.log("ERROR: ", e);
					display(e);
				},
				done : function(e) {
					console.log("DONE");
					enableSearchButton(true);
				}
			});

		}

		function enableSearchButton(flag) {
			$("#btn-search").prop("disabled", flag);
		}

		function display(data) {
			var results = "<h4>No information available for that location</h4>";
			if( typeof data.city !== "undefined" ) {
				results = "<h4>Temperature in "+ data.city+", "+data.country +" is "
						+ data.value + " degrees in Centigrade as measured on "+data.dateTimeUpdated+" London, UK time</h4>";
			}
			$('#feedback').html(results);
		}

		function displayJSON(data) {
			var json = "<h4>Ajax Response</h4><pre>"
					+ JSON.stringify(data, null, 4) + "</pre>";
			$('#feedback').html(json);
		}
	</script>
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>
