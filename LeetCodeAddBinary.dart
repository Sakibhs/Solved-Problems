class Solution {
  String addBinary(String a, String b) {
    bool temp = false;
    String resultString = "";
    int aLength = a.length;
    int bLength = b.length;
    if (aLength > bLength) {
      for (int i = 0; i < aLength - bLength; i++) {
        b = "0" + b;
      }
    } else if (bLength > aLength) {
      for (int i = 0; i < bLength - aLength; i++) {
        a = "0" + a;
      }
    }

  // print("a = $a\nb = $b");

    for (int i = a.length-1; i >= 0; i--) {
      if (a[i] == "0" && b[i] == "0") {
        if (temp) {
          resultString += "1";
        } else
          resultString += "0";
        temp = false;
      } else if (a[i] == "0" && b[i] == "1") {
        if (temp) {
          resultString += "0";
          temp = true;
        } else {
          resultString += "1";
          temp = false;
        }
      } else if (a[i] == "1" && b[i] == "0") {
        if (temp) {
          resultString += "0";
          temp = true;
        } else {
          resultString += "1";
          temp = false;
        }
      } else {
        //a[i] ==1 && b[i] == 1
        if (temp) {
          resultString += "1";
          temp = true;
        } else {
          resultString += "0";
          temp = true;
        }
      }
    }
    if (temp) {
      resultString += "1";
    }
    String result = "";
    for (int i = resultString.length - 1; i >= 0; i--) {
      result += resultString[i];
    }
    //  print("a = $a\nb = $b");
    return result;
  }
}

void main() {
  print(Solution().addBinary("111", "111"));
}
