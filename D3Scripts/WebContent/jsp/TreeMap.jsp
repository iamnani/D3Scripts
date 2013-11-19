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

		var color = d3.scale.category10();
	
		var canvas = d3.select("body")
						.append("svg")
						.attr("height", 500)
						.attr("width", 500);
		
		d3.json("treemap.json", function(data){
			
			var treemap = d3.layout.treemap()
							.size([500, 500])
							.nodes(data);
			
		//	console.log(treemap);
		
		var cells = canvas.selectAll(".cell")
					.data(treemap)
					.enter()
					.append("g")
					.attr("class", "cell");
		
		cells.append("rect")
			 .attr("x", function(d) { return d.x; })
			 .attr("y", function(d) { return d.y; })
			 .attr("width", function(d) { return d.dx; })
			 .attr("height", function(d) { return d.dy; })
			 .attr("fill", function(d) { return d.children ? null : color(d.parent.name); })
			 .attr("stroke", "#FFF");
		
		cells.append("text")
			 .attr("x", function(d) { return d.x + d.dx/2; })
			 .attr("y", function(d) { return d.y + d.dy/2; })
			 .attr("text-anchor", "middle")
			 .text(function(d){ return d.children ? null : d.name;});
		});
	</script>

</body>
</html>
