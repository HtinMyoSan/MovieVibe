<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.*" %>
    <%@ page import="come.db.*" %>
    <%@ page import="come.data.*" %>
    <%@ page import="com.crdu.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 *{
	margin:0;
	padding:0;
	box-sizing: border-box;
	font-family:'Segoe UI',sans-serif;
}
body{
    background: url(images/film2.png);
    background-size: cover;
    background-repeat: no-repeat;
    height: 100vh;
}

#header{
	position: absolute;
	top: 0;
	left: 0;
	padding: 30px 100px;
	width: 100%;
	display: flex;
	justify-content:  space-between;
	align-items: center;
	z-index: 10000;
}
#header .logo{
	color: red;
	font-weight: 700;
	font-size: 2em;
	text-decoration: none;
}

#header ul{
	display: flex;
	justify-content: center;
	align-items: center;
}

#header ul li{
	list-style: none;
	margin-left: 20px;
	font-size: 20px;
}

#header ul li a{
	text-decoration: none;
	padding:6px 15px;
	color: #ffff;
	border-radius: 2px;
}

#header ul li a:hover{
	background: linear-gradient(45deg,red,rgb(245,14,1122));
	color: rgb(253,252,252);
}
.gg{

	width: 600px;
    padding: 40px; 
	margin: 50px auto;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
}
h1{
text-align: center;
color: red;
}
</style>
</head>
<body>
<header id="header">
      <ul>
        <li><a href="index.html" class="active">Home</a></li>
        <li><a href="" class="active"><b>TV Shows</b></a></li>
        <li><a href="" class="active"><b>Anime Series</b></a></li>
        <li><a href="movielist.jsp" class="active"><b>Movies List</b></a></li>
        <li><a href="insert.html" class="active"><b>Add Movies</b></a></li>
      </ul>
      <a href="" class="logo">MOVIE VIBE</a>
 </header>
<br><br><br><br><br>
<div class="gg">
<%int mid = Integer.valueOf(request.getParameter("id")); 

 MovieCRUD mcd= new MovieCRUD();
 mcd.delete(mid);
%>
<h1>Id<%=mid %> is deleted successfully!</h1>
</div>
</body>
</html>