class Solution {
  List<int> plusOne(List<int> digits) {
    int carry = 1;
    for (int i = digits.length - 1; i >= 0; i--) {
      int sum = digits[i] + carry;
      digits[i] = sum % 10;
      carry = sum ~/ 10;
    }
    if (carry > 0) {
      digits.insert(0, carry);
    }
    return digits;
  }
}
