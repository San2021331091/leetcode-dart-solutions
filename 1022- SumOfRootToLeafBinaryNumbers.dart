class TreeNode{
  int? val;
  TreeNode? left,right;
  TreeNode({this.val = 0,this.left = null,this.right = null});
}

class Solution{
   
  void dfs(TreeNode? node, int prev,List<int>total){
    if(node == null) return;
    int cur = 2 * prev + node.val!;
    if(node.left == null && node.right == null) total[0] += cur;
    else{
      dfs(node.left, cur, total);
      dfs(node.right, cur, total);
    }
   }
   int sumRootToLeaf(TreeNode? root){
    List<int>total = [0];
    int prev = 0;
    dfs(root, prev, total);
    return total[0];
   }

}


  