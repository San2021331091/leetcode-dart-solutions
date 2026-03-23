import 'dart:collection';

class TreeNode {
  int? val;
  TreeNode? left, right;
  TreeNode(int x) : val = x, left = null, right = null;
}

class Pair<T, F> {
  T? _first;
  F? _second;
  Pair(T? f, F? s) : _first = f, _second = s;
  T? get getFirst => _first;
  F? get getSecond => _second;
}

class Solution {
  List<List<int>> _v = [];
  Queue<Pair<TreeNode?, int>> _q = Queue();

  List<List<int>> levelOrder(TreeNode? root) {
    if (root == null) return _v;
    _q.add(Pair(root, 0));
    getVector();
    return _v;

  }

  void getVector(){
    while(!_q.isEmpty){
      Pair<TreeNode?,int> current = _q.first;
      _q.removeFirst();
      TreeNode tn = current.getFirst!;
      int depth = current.getSecond!;
      while(depth >= _v.length) {
        List<int> u = [];
        _v.add(u);
      }
      _v[depth].add(tn.val!);
      if(tn.left != null){
        _q.add(Pair(tn.left,depth + 1));
      }
      if(tn.right!=null){
        _q.add(Pair(tn.right, depth + 1));
      }
    }
  }
}
