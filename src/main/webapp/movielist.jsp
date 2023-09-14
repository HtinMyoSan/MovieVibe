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
<title>Movie List</title>
<style>
 *{
	margin:0;
	padding:0;
	box-sizing: border-box;
	font-family:'Segoe UI',sans-serif;
}
body{
    background: url(images/moviebg.jpg);
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
section{
	position: relative;
	width: 100%;
	height: 100%;
	overflow: hidden;
	display: flex;
	justify-content: center;
	align-items: center;	
}
.gg{

	width: 1500px;
    padding: 40px; 
    left: 0px;
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

th{
    border: 1px solid yellow;
    padding: 10px;
    text-align: left;
    color: #80ff00; /* Change text color to white */
    font-weight: bold; /* Add bold font weight */
}
td {
    border: 1px solid yellow;
    padding: 10px;
    text-align: left;
    color: black; /* Change text color to white */
    font-weight: bold; /* Add bold font weight */
}
.edit{
color: yellow;
font-weight: bold;
transition: 0.4s ease-in-out;

}
.delete{
color: red;
font-weight: bold;
transition: 0.4s ease-in-out;
}

a {
  text-decoration: none;
  color: #4F4F4F;
}
a:hover {
  color: #ffff;
  font-weight: bold;
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
 <section>
<div class="gg">
<h1>Movie List</h1>
<table>
          <tr>
	                <th>ID</th>
	                <th>Movie Title</th>
	                <th>Release Date</th>
	                <th>Genre</th>
	                <th>Director</th>
	                <th>Duration</th>
	                <th>Edit </th>
	                <th>Delete</th>
	      </tr>
	      <%
	      MovieCRUD dc = new MovieCRUD();
	      ArrayList<Movie> mlist = dc.selectAll();
	      for (Movie data: mlist){
	      %>
	      <tr>
	                <td><%= data.getMovieId()%></td>
	                <td><%= data.getMovieTitle() %></td>
	                <td><%= data.getReleaseDate() %></td>
	                <td><%= data.getGenre() %></td>
	                <td><%= data.getDirector() %></td>
	                <td><%= data.getDuration()%></td> 
	                <td><a href="update.jsp?id=<%=data.getMovieId()%>&title=<%=data.getMovieTitle()%>&date=<%=data.getReleaseDate()%>&genre=<%=data.getGenre()%>&director=<%= data.getDirector()%>&duration=<%= data.getDuration()%>"class="edit" >Edit</a> </td>
	                <td><a href="delete.jsp?id=<%=data.getMovieId()%>" class="delete">Delete</a> </td>         
	      </tr>
	      <% } %>
</table>
</div>
</section>
</body>
</html>