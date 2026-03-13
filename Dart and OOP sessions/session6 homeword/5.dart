import 'dart:io';

void main() {
  List<int> nums = [];
  for (int i = 1; i <= 5; i++) {
    print("Enter a number");
    nums.add(int.parse(stdin.readLineSync()!));
  }
  int max = nums[0];
  int secondMax = nums[0];
  for (var number in nums) {
    if (number > max) {
      secondMax = max;
      max = number;
    }
  }
  print("Largest number: $max");
  print("Second largest number: $secondMax");
}