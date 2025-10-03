class Solution {
  int climbStairs(int n) {
    int result1 = 1;
    int result2 = 1;
    int result = 0;

    if (n == 1) return 1;

    for (int i = n - 1; i > 0; i--) {
      result = result1 + result2;
      result1 = result2;
      result2 = result;
    }
    return result;
  }
}
