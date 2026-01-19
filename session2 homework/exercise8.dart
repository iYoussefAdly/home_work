void main() {
  Map<String, dynamic> book = {
    "title": "Dart Guilde",
    "pages": 120,
    "price": 19.99
  }; //a
  print(book["title"]); //b
  book["price"] = 22.2; //b
  book.addAll({"author": "Youssef"}); //b
  print("${book.keys}\n${book.values}\n${book.containsKey("pages")}");//c
}
