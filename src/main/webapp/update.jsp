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
<title>Update</title>
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
.container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            
        }
        label {
            display: block;
            margin-bottom: 5px;
            color:#80ff00;
            font-weight: bold;
            
        }
        input[type="text"], select{
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input[type="date"], select{
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        h2{
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
<%
int id = Integer.valueOf(request.getParameter("id"));
String title = request.getParameter("title");
String releaseDate = request.getParameter("date");
String genre = request.getParameter("genre");
String director = request.getParameter("director");
String duration = request.getParameter("duration");
%>
  <br> <br> <br> <br> <br> <br> <br>
    <div class="container">
        
        <form action="updateaction.jsp" method="post">
            <h2>UPDATE MOVIES</h2>
            
            <input type="hidden" name="id" value="<%=id %>">
        
            <label >Movie Title</label>
            <input type="text"  name="movie_title" value="<%= title %>">
     
            <label >Release Date</label>
            <input type="date"  name="release_date" value="<%= releaseDate %>">

            <label >Genre</label>
            <input type="text" name="genre"  value="<%= genre %>">

            <label >Director</label>
            <input type="text" name="director" value="<%= director %>">

            <label >Duration (minutes)</label>
            <input type="text"  name="duration" value="<%= duration %>">

            <input type="submit" value="UPDATE">
        </form>
    </div>
</body>
</html>