class Solution {
  int numPairsDivisibleBy60(List<int> time) {
    int res = 0;
    var f = Map<int, int>();
    for (int p = 0; p < time.length; p++) {
      int x = time[p] % 60;
      int y = (60 - x) % 60;
      if (f.containsKey(y)) res += f[y]!;
      f[x] = (f[x] ?? 0) + 1; 
    }
    return res;
  }
}
