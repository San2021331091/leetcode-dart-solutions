class Solution{

    List<int> twoSum(List<int> nums,int target){
      Map<int,int> indices = {};
      List<int> ans = List.filled(2, 0);
      for(int p = 0; p< nums.length; p++){
        if(indices.containsKey(target - nums[p])){
          ans[0] = indices[target - nums[p]]!;
          ans[1] = p;
          return ans;
        }
        indices[nums[p]] = p;
      }
      return ans;
    }

}