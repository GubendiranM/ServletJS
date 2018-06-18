<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style></style>
</head>
<body>
<%
String option = (String)request.getAttribute("option");
Map<String, ArrayList<String>> mapData = (Map<String, ArrayList<String>>) request.getAttribute("mapData");
System.out.println("mapdata" + mapData.get(option));
System.out.println("option" + option);
ArrayList<String> list = mapData != null? mapData.get(option): null;
System.out.println("list" + list);
%>
<h1>Results in <%=option.toUpperCase()%></h1>
<hr color="blue"/>
<% if(option.equals("text") && list != null){%>
<table>
	<% for(String value : list){%>	
		<tr><td><input type="text" value= "<%=value%>" ></text></td></tr>
	<% }%>
</table>
<% }%>

<% if(option.equals("list") && list != null){%>
<select>
	<% for(String value : list){%>
		<option  ><%=value%></option>
	<% }%>
</select>
<% }%>

</body>
</html>