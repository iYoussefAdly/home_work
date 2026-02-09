class Movie {
  String title;
  double rating;
  Movie(this.title, this.rating);
}
void main() {
  List<Movie> movies = [
    Movie("Inception", 8.8),
    Movie("Avatar", 7.0),
    Movie("Titanic", 7.5),
    Movie("Batman", 6.9),
  ];

  for (var movie in movies) {
    if (movie.rating > 7) {
      print("${movie.title} - Rating: ${movie.rating}");
    }
  }
}
