class Solution {
  List<int> searchRange(List<int> nums, int target) {
    List<int> dizi = [];

    int first = -1;
    int last = -1;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target) {
        if (first == -1) {
          first = i;
        }
        last = i; 
      }
    }

    dizi.add(first);
    dizi.add(last);

    return dizi;
  }
}
