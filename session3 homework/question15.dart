void main() {
  String? path = '/products'; 
  switch (path) {
    case '/':
      print("Welcome to Home");
      break;
    case '/products':
      print("Here are our products");
      break;
    case '/profile':
      print("User profile page");
      break;
    default:
      print("Page not found");
  }
}
