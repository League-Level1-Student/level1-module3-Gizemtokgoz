package _05_netflix;

import javax.swing.JOptionPane;

public class NetflixRunner {
	public static void main(String[] args) {
		NetflixQueue q = new NetflixQueue();

		Movie movie1 = new Movie("The 100", 8);
		Movie movie2 = new Movie("Inception", 9);
		Movie movie3 = new Movie("Frozen 2", 1);
		Movie movie4 = new Movie("The Hate U Give", 7);
		Movie movie5 = new Movie("The Hunger Games", 7);
		
		q.addMovie(movie1);
		q.addMovie(movie2);
		q.addMovie(movie3);
		q.addMovie(movie4);
		q.addMovie(movie5);
		q.printMovies();
		
		System.out.println(movie3.getTitle() + ": " + movie3.getTicketPrice());
		System.out.println("Any of the other movies: " + movie1.getTicketPrice());
		
		System.out.println("The best movie is for this queue is .... " + q.getBestMovie() + "!");
		System.out.println("The second best movie is .... " + movie1 + " !");
		
	}
}
