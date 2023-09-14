package come.data;

public class Movie {
    private int movieId;
    private String movieTitle;
    private String releaseDate;
    private String genre;
    private String director;
    private String duration;
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	
	
	public Movie(String movieTitle, String releaseDate, String genre, String director, String duration) {
		super();
		this.movieTitle = movieTitle;
		this.releaseDate = releaseDate;
		this.genre = genre;
		this.director = director;
		this.duration = duration;
	}
	public Movie(int movieId, String movieTitle, String releaseDate, String genre, String director, String duration) {
		super();
		this.movieId = movieId;
		this.movieTitle = movieTitle;
		this.releaseDate = releaseDate;
		this.genre = genre;
		this.director = director;
		this.duration = duration;
	}
}
