void main() {
  List<int>? nums;
  nums = [1, 2, 3, 4];
  if (nums == null || nums.isEmpty) {
    print("No Scores");
  } else {
    int sum = nums.first + nums.last;
    if (sum >= 40) {
      print("Sum is greater than or equal 40");
    } else {
      print("Sum is less than 40");
    }
  }
}
