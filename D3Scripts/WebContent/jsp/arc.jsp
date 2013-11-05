<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>D3 scripts</title>

<script type="text/javascript" src="../scripts/d3.min.js"></script>

</head>
<body>
	<script type="text/javascript">

	
	
		var canvas = d3.select("body")
						.append("svg")
						.attr("height", 500)
						.attr("width", 400);
		
		var group = canvas.append("g").attr("transform", "translate(150,150)");
		
		var r = 100;
		var p = Math.PI * 2;
		
	 	var arc = d3.svg.arc()
	 				.innerRadius(r-40)
	 				.outerRadius(r)
	 				.startAngle(0)
	 				.endAngle(p);
	 	
	 	group.append("path")
	 			.attr("d", arc);
	</script>

</body>
</html>
