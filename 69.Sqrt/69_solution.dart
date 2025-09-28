class Solution {
  int mySqrt(int x) {
    int count = 0;
    int prev = 0;

    while (true) {
      if ((count * count) == x) {
        print(count);
        return count;
        break;
      }
      if ((count * count) > x && (prev * prev) < x) {
        print(prev);
        return prev;
        break;
      }
      prev = count;
      count++;
    }
  }
}
