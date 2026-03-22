class Solution{
  bool check(List<int> v,int cap, int td){
    int cur = 0, cnt = 1;
    for(int p = 0; p < v.length; p++){
      if(v[p] > cap) return false;
      if(cur + v[p] > cap){
        ++cnt;
        cur = v[p];
      }
      else{
        cur += v[p];
      }
    }
    return (cnt <= td);
  }
  int shipWithinDays(List<int> weights, int days){
    int left = 0,right = 1e8.toInt(),w = 0;
    while(left<=right){
      int mid = ((left+right)/2).toInt();
      if(check(weights, mid, days)){
        w = mid;
        right = mid - 1;
      }
      else{
        left = mid + 1;
      }
    }
    return w;
  }
}