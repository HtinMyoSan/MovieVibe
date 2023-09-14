package com.crdu;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import come.data.*;
import come.db.DBManager;

public class MovieCRUD {
	
	public void insertMovieData(Movie m) throws ClassNotFoundException, SQLException {
		//1. get connection
		DBManager dbm = new DBManager();
		dbm.connector();
		
		//2. Prepared Statement
		String sql = "INSERT INTO `movie_vibe`.`movie_list`\r\n"
				+ "(\r\n"
				+ "`movie_title`,\r\n"
				+ "`release_date`,\r\n"
				+ "`genre`,\r\n"
				+ "`director`,\r\n"
				+ "`duration(mins)`)\r\n"
				+ "VALUES\r\n"
				+ "(?,?,?,?,?);";
		
		PreparedStatement ps = dbm.connector().prepareStatement(sql);
	    
		ps.setString(1, m.getMovieTitle());
		ps.setString(2, m.getReleaseDate());
		ps.setString(3, m.getGenre());
		ps.setString(4, m.getDirector());
		ps.setString(5, m.getDuration());
		
		//3.Execute Statement
		ps.executeUpdate();
		dbm.connector().close();
	 }
	//Select method from database
	public ArrayList<Movie> selectAll()throws ClassNotFoundException, SQLException{ 
		//select all 
		 	 	ArrayList<Movie> mlist = new ArrayList<Movie>(); // collection of diet
		 	 	Movie m; 
		 	 	// get connection 
		 	 	DBManager dbm = new DBManager(); 
		 	 	dbm.connector();
		        // query 
		 	 	String sql = "SELECT `movie_list`.`id`,\r\n"
		 	 			+ "    `movie_list`.`movie_title`,\r\n"
		 	 			+ "    `movie_list`.`release_date`,\r\n"
		 	 			+ "    `movie_list`.`genre`,\r\n"
		 	 			+ "    `movie_list`.`director`,\r\n"
		 	 			+ "    `movie_list`.`duration(mins)`\r\n"
		 	 			+ "FROM `movie_vibe`.`movie_list`;"; 
		 	 	
		 	 	//prepared statement
		 	 	PreparedStatement ps = dbm.connector().prepareStatement(sql);  
		 	 	
		        ResultSet rs = ps.executeQuery(); 
		 
		 
		 	 	while (rs.next()) { 
		 	 	 	m = new Movie( 
		 	 	 	 	 //database column name
		 	 	 			rs.getInt("id"),
		                    rs.getString("movie_title"),
		                    rs.getString("release_date"), 
		                    rs.getString("genre"), 
		                    rs.getString("director"), 
		                    rs.getString("duration(mins)")); 
		 	 	 mlist.add(m); //add entity into collection to array list
		 	 	} 
		 	 	dbm.connector().close();
		 	 	return mlist; 
		 	}
	
	public void update(Movie m) throws ClassNotFoundException, SQLException{
		
		//1. get connection
		DBManager dbm=new DBManager();
		dbm.connector();
		
		//2.prepare statement
		
		String sql = "UPDATE `movie_vibe`.`movie_list`\r\n"
				+ "SET\r\n"
				+ "\r\n"
				+ "`movie_title` = ?,\r\n"
				+ "`release_date` = ?,\r\n"
				+ "`genre` = ?,\r\n"
				+ "`director` = ?,\r\n"
				+ "`duration(mins)` = ?\r\n"
				+ "WHERE `id` = ?;";


		PreparedStatement ps=dbm.connector().prepareStatement(sql);
		
		// first and second parameters inserted 1. course name and course text
		
		ps.setString(1, m.getMovieTitle());
		ps.setString(2, m.getReleaseDate());
		ps.setString(3, m.getGenre());
		ps.setString(4, m.getDirector());
		ps.setString(5, m.getDuration());
		ps.setInt(6, m.getMovieId());
		
		//3.execute statement
		
		ps.executeUpdate();
		dbm.connector().close();
		
	}
	
	public void delete(int id) throws ClassNotFoundException, SQLException {
		// get connection
		DBManager dbm = new DBManager(); 
		 	dbm.connector();
		 	String sql ="DELETE FROM `movie_vibe`.`movie_list`\r\n"
		 			+ "WHERE `id`=? ";
		 	//prepared statement
	 	 	PreparedStatement ps = dbm.connector().prepareStatement(sql); 
	 	 	ps.setInt(1, id);
	 	 	ps.executeUpdate();
	}
}
