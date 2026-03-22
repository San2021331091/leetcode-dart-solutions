import 'dart:collection';

class MultiSet<T extends Comparable> {
  final SplayTreeMap<T, int> _map = SplayTreeMap();
  int _size = 0;

  void insert(T value) {
    _map[value] = (_map[value] ?? 0) + 1;
    _size++;
  }

  void erase(T value) {
    if (!_map.containsKey(value)) return;

    if (_map[value]! > 1) {
      _map[value] = _map[value]! - 1;
    } else {
      _map.remove(value);
    }
    _size--;
  }

  int count(T value) => _map[value] ?? 0;
  int size() => _size;
  bool empty() => _size == 0;

  void clear() {
    _map.clear();
    _size = 0;
  }
T? popFirst() {
  if (_map.isEmpty) return null;
  var firstKey = _map.firstKey();
  erase(firstKey!);
  return firstKey;
}

  T? lowerBound(T value) {
    for (var key in _map.keys) {
      if (key.compareTo(value) >= 0) return key;
    }
    return null;
  }
  T? upperBound(T value) {
    for (var key in _map.keys) {
      if (key.compareTo(value) > 0) return key;
    }
    return null;
  }

  List<T> toList() {
    final result = <T>[];
    for (var entry in _map.entries) {
      result.addAll(List.filled(entry.value, entry.key));
    }
    return result;
  }

  Iterable<T> get elements sync* {
    for (var entry in _map.entries) {
      for (int i = 0; i < entry.value; i++) {
        yield entry.key;
      }
    }
  }

  @override
  String toString() => toList().toString();
}

class Solution{

   int largestSumAfterKNegations(List<int>nums,int k){

       var s = MultiSet<int>();
       int total = 0;
       int mn = 1e3.toInt();
       for(int p = 0; p < nums.length; p++){
        if(nums[p] < 0) s.insert(nums[p]);
        total += nums[p];
        if(nums[p].abs() < mn){
          mn = nums[p].abs();
        }
       }
       while(!s.empty()){
        if(k== 0) break;
        else{
          --k;
        }
         int x = s.popFirst()!;
         total -= 2 * x;       
       } 
       if(k%2==1) total -= 2 * mn;
       return total;      
   }

}
