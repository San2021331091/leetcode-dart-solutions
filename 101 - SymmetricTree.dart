class TreeNode{
  int? val;
  TreeNode? left,right;
  TreeNode(int x) : val = x, left = null, right = null;
}
class Solution{

  bool isSymmetric(TreeNode? root){
    if(root == null) return true;
    return isMirror(root.left, root.right);
  }
  bool isMirror(TreeNode? a,TreeNode? b){
    if(a==null || b== null) return a == b;
    if(a.val!=b.val) return false;
    return isMirror(a.left, b.right) && isMirror(a.right, b.left);
  }
}

