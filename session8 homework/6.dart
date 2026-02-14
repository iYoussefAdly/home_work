bool isValid(String s) {
  List<String> stack = [];
  Map<String, String> matchingBrackets = {
    ')': '(',
    '}': '{',
    ']': '[',
  };
  for (var char in s.split('')) {
    if (matchingBrackets.containsValue(char)) {
      stack.add(char);
    } else if (matchingBrackets.containsKey(char)) {
      if (stack.isEmpty || stack.removeLast() != matchingBrackets[char]) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}
void main() {
  print(isValid("()"));
  print(isValid("()[]{}"));
  print(isValid("(]"));
  print(isValid("([)]"));
  print(isValid("{[]}"));
}
