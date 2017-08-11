<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Callback</title>
<script src="<%=request.getContextPath()%>/jquery-1.11.3.min.js"></script>
</head>
<body>


<%
String msg;
msg = request.getAttribute("status").toString();
String status =(String) request.getAttribute("status").toString();
String id =(String) request.getAttribute("id").toString();
String event= (String) request.getAttribute("event").toString();
String name = (String) request.getAttribute("name").toString();
//String partnerId = request.getAttribute("partnerId").toString();
String url =(String) request.getAttribute("url").toString();
//String size = request.getAttribute("size").toString();


%>


<script>

function call()
{
	alert("call");
	window.open('<%=url%>');
}

</script>
<h1>Callback Called</h1>

<input type="text" name="msg" id="msg" value="<%=msg%>" />

<input type="text" name="id" id="id" value="<%=id%>" />
<input type="text" name="event" id="event" value="<%=event%>" />
<input type="text" name="name" id="name" value="<%=name%>" />


<input type="text" name="url" id="url" value="<%=url%>" />


<button type="button" name="videolink" id="videolink" 
	onclick= "call()">Click to see video</button>

</body>
</html>