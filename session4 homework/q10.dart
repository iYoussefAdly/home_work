void main() {
  List<int> nums = [3, 7, 2, 9, 12, 4, 6];
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] % 3 == 0) {
      print("${nums[i]}");
    }
  }
}
