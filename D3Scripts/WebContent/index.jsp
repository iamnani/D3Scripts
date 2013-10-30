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
			 var arr=[5,10, 15, 20, 22, 25, 26, 30, 36];
			 
			 var color = d3.scale.linear()
			 					.domain([0, d3.max(arr)])
			 					.range(["green", "blue"]);
			 
			 var xScale = d3.scale.linear()
			 					.domain([0, d3.max(arr)])
			 					.range([0, width]);
			 
			 
			  var canvas = d3.select("body")
			 			  .append("svg")
			 			  .attr("width", width)
			 			  .attr("height", 500); 
			 
			 /* var circle= canvas.append("circle")
			 				.attr("cx", 100)
			 				.attr("cy", 200)
			 				.attr("r", 20)
			 				.attr("fill", "red"); */
			 
			 var bars = canvas.selectAll("rect")
			 				.data(arr)
			 				.enter().append("rect")
			 					.attr("x", 10)
			 					.attr("y", function(val, i){ return i*25;})
			 					.attr("height", 20)
			 					.attr("width", function(val){return xScale(val); })
			 					.attr("fill", function(val){ return color(val);});
			 
	
	</script>

</body>
</html>
