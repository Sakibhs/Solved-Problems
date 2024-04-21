class Solution {
  List<int> plusOne(List<int> digits) {
    Iterable<int> r = digits.reversed;
    bool temp = true;
    List<int> reversedList = r.toList();
    for (int i = 0; i < digits.length; i++) {
      if (reversedList[i] < 9) {
        reversedList[i]++;
        return reversedList.reversed.toList();
      } else if (temp) {
        reversedList[i] = 0;
        if (i < digits.length - 1 && [i + 1] == 9) {
          temp = true;
        } 
      } else {
          temp = false;
        }
    }
    if (temp) {
      reversedList.add(1);
    }
    return reversedList.reversed.toList();
  }
}
