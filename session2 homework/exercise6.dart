void main() {
  List<String> animals = ["Lion", "Tiger", "Dog"]; //a
  animals.add("Cat"); //b
  animals.removeLast(); //b
  animals[1] = "Monkey"; //b
  print(animals.first); //c
  print(animals.last); //c
  print(animals.length);//c
}
