<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>D3 scripts</title>

<script type="text/javascript" src="scripts/d3.min.js"></script>

</head>
<body>
<script type="text/javascript">
	
			 d3.select("body")
				.append("p")
				.text("hello  this is first one..");
			 
			 var width=500;
			 var arr=[10,20,30];
			 
			 
			  var canvas = d3.select("body")
			 			  .append("svg")
			 			  .attr("width", width)
			 			  .attr("height", 500); 
			 
			 var circle= canvas.append("circle")
			 				.attr("cx", 100)
			 				.attr("cy", 200)
			 				.attr("r", 20)
			 				.attr("fill", "red");
			 
	
	</script>

</body>
</html>