class Solution {
  String addBinary(String a, String b) {
    int sum = (StringBinaryToInt(a) + StringBinaryToInt(b));
    String result = IntToStringBinary(sum);
    return result;
  }

  int StringBinaryToInt(String a) {
    int binaryNumber = int.parse(a);
    List<int> binary = [];
    int sum = 0;
    int count = 0;
    while (binaryNumber > 0) {
      int temp = binaryNumber % 10;
      sum += temp * pow(2, count).toInt();
      binaryNumber = binaryNumber ~/ 10;
      count++;
    }
    return sum;
  }

  String IntToStringBinary(int sum) {
    List<int> binary = [];
    while (sum > 0) {
      int temp = sum % 2;
      binary.add(temp);
      sum = sum ~/ 2;
    }
    String result = "";
    for (int i = binary.length - 1; i >= 0; i--) {
      result += binary[i].toString();
    }
    return result;
  }
}
