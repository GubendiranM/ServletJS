<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ZydeSoft Task</title>
<style>

ul {
  list-style-type: none;
}

#add_btn {
  	position: relative;
    width: 25px;
    height: 25px;
    /* margin-top: 5px; */
    top: 5px;
}
  
input {
    height: 25px !importnat;
}

.item {
    height: 26px;
}

.del-img {
    position: relative;
    top: 5px;
}

  
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="./javascript.js">
</script>
<script>
$(document).ready(function(){
    //alert('worked jquery');
    $("#add_btn").click( function(){
    	pageHandler.add($("#input_text").val()); 
    });
    
    $("#send_btn").click( function(){
    	pageHandler.sendToServlet(); 
    });
});

</script>
</head>
<body>
<div>
<h1>ZydeSoft Task</h1>
<h2><h2>Add Information</h2></h2>
</div>
<div id="input_data">
<input type="text" id="input_text" />
<img id = "add_btn" src='./images/add.png' alt='delete'></img>
</div>
<hr color="green"/>
<div>
<h2>Information</h2>
</div>
<div id="data_container">
</div>

<hr color="blue"/>
<div>
	<h2>View Mode</h2>
	<select id="option">
		<option>text</option>
		<option>list</option>
	</select>
	<button id="send_btn"> submit </button>
</div>
</body>
</html>