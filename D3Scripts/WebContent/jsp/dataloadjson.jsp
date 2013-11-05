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

	
	d3.json("data.json", function(data){
	
		var canvas = d3.select("body")
						.append("svg")
						.attr("height", 500)
						.attr("width", 400);
		
		canvas.selectAll("rect")
				.data(data)
				.enter()
					.append("rect")
					.attr("width", function(d) { return d.age*10 })
					.attr("height", function(d){ return 48})
					.attr("y", function(d, i){ return i*50; });
			 
	});
	</script>

</body>
</html>
