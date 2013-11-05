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

			var canvas = d3.select("body")
							.append("svg")
							.attr("width", 500)
							.attr("height", 500);
			
			var circle = canvas.append("circle")
						   .attr("cx", 20)
						   .attr("cy", 100)
						   .attr("r", 7);
			
			/* circle.transition()
					.duration(1500)
					.attr("cx", 120)
					.attr("r", 28)
					.attr("fill", "#23abc3")
					.transition()
					.duration(3000)
					//.delay(500)   // delays the transition by no. of milli seconds
					.attr("cx", 220)
					.attr("r", 7)
					.attr("fill", "black")
					; */
					circle.transition()
					.duration(1500)
					.attr("cx", 200)
					.each("end", function(){ d3.select(this).attr("fill", "red"); })
					;
	
	</script>

</body>
</html>
