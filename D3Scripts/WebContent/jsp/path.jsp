<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="../scripts/d3.min.js"></script>
<title>Simple Path Example</title>
</head>
<body>
<script>

	var canvas = d3.select("body")
					.append("svg")
					.attr("height", 400).attr("width", 400);
	
	
	var data = [{x:10, y:30}, {x:40, y:70},{x:80, y:90},{x:100, y:130}];
	
	var group = canvas.append("g").attr("transform", "translate(100, 100)");
	
	var line = d3.svg.line()
				.x(function(d){ return d.x;})
				.y(function(d) { return d.y; });
	
	group.selectAll("path")
		.data([data])
		.enter()
			.append("path")
			.attr("d", line)
			.attr("fill", "none")
			.attr("stroke", "#000")
			.attr("stroke-width", 10);
	
</script>
</body>
</html>