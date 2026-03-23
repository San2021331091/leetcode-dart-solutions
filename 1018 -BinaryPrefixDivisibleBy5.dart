class Solution{

  List<bool> prefixesDivBy5(List<int>nums){
    var v = List<bool>.filled(nums.length,false);
    int cur = 0;
    for(int p = 0; p<nums.length;p++){
      cur = (2*cur+nums[p]) % 5;
      v[p] = (cur == 0);
    }
    return v;
  }
}


