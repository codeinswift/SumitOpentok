<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>

<script type=text/javascript src="jquery-1.11.3.min.js"></script>
<script>
$(document).ready(function(){
    $("#somebutton").click(function(){
    	$.ajax
    	(
    	    {
    	        url:'controlServlet',
    	        data: {
    	            name: "Donald Duck",
    	            city: "Duckburg"
    	          },
    	        type:'POST',
    	        datatype: 'xml',
    	       
    	        success:function(){alert("success");},
    	        error:function(){alert('error');}
    	    }
    	);
    });
});




</script>

</head>
<body>
	<button id="somebutton">press here</button>
	<div id="somediv"></div>
</body>


</html>