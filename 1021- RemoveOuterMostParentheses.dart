class Solution{
  String removeOuterParentheses(String s){
    String ans = "";
    int cnt = 0;
    for(int p = 0; p < s.length;p++){
          if(s[p] == '('){
            if(cnt > 0){ans += '(';}; ++cnt;
            }
            else if(s[p] == ')'){--cnt;
             if(cnt>0){ans += ')';}}
    }
    return ans;
  }
}