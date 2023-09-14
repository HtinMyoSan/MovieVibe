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
table {
    width: 80%; /* Adjust the width of the table as needed */
    margin: 0 auto; /* Center the table horizontally */
    border-collapse: collapse;
}

th, td {
    border: 1px solid yellow;
    padding: 10px;
    text-align: left;
    color: #80ff00; /* Change text color to white */
    font-weight: bold; /* Add bold font weight */
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
<%
int id = Integer.valueOf(request.getParameter("id"));
String title = request.getParameter("movie_title");
String releaseDate = request.getParameter("release_date");
String genre = request.getParameter("genre");
String director = request.getParameter("director");
String duration = request.getParameter("duration");
%>
<br><br><br><br><br>
<div class="gg">
<h1>Successfully Updated!</h1>
<%
     Movie m = new Movie(id,title,releaseDate,genre,director,duration);
     MovieCRUD mcd = new MovieCRUD();
     mcd.update(m);
%>
<table>
        <thead>
            <tr>
                <th>Movie Title</th>
                <td><%=title %></td>
            </tr>
        </thead>
        <thead>
            <tr>
                <th>Release Date</th>
                <td><%=releaseDate %></td>
            </tr>
        </thead>
        <thead>
            <tr>
                <th>Genre</th>
                <td><%=genre %></td>
            </tr>
        </thead>
        <thead>
            <tr>
                <th>Director</th>
                <td><%=director %></td>
            </tr>
        </thead>
        <thead>
            <tr>
                <th>Duration</th>
                <td><%=duration %></td>
            </tr>
        </thead>
    </table>
</div>
</body>
</body>
</html>