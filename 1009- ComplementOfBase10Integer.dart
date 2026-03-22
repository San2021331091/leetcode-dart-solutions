class Solution {
  int bitwiseComplement(int n) {
    if (n == 0) return 1;
    int res = 0, bit = 1;
    while (n != 0) {
      if ((n & 1) == 0) {
        res += bit;
      }
      n = n >> 1;
      bit = bit << 1;
    }
    return res;
  }
}