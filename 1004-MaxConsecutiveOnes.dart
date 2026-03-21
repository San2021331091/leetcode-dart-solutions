import 'dart:math';

class Solution {
  int longestOnes(List<int>? nums, int k) {
    int start = 0, rem = k, mx = 0;
    for (int p = 0; p < nums!.length; p++) {
      if (nums[p] == 0) {
        --rem;
        while (rem < 0) {
          if (nums[start] == 0) ++rem;
          ++start;
        }
      }
      int cur = p - start + 1;
      mx = max(mx, cur);
    }
    return mx;
  }
}
