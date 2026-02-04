void main() {
  int num1 = 725;
  reverseInteger(num1);
  sortNumbersDes(num1);
  print('${duplicates([1, 2, 4, 4, 3, 3, 1, 5, 3, "5"])} ==> [4, 3, 1]');
}

void reverseInteger(int a) {
  String strNum = a.toString();
  List<String> characters = strNum.split('');
  String reversedString = characters.reversed.join();
  int reversedNum = int.parse(reversedString);
  print(reversedNum);
}

void sortNumbersDes(int b) {
  String str = b.toString();
  List<String> charList = str.split('');
  charList.sort((a, b) => b.compareTo(a));
  String sortedString = charList.join();
  int sortNumber = int.parse(sortedString);
  print(sortNumber);
}

List<dynamic> duplicates(List<dynamic> arr) {
  final seen = <dynamic>{};
  final added = <dynamic>{};
  final result = <dynamic>[];

  for (var item in arr) {
    if (seen.contains(item) && !added.contains(item)) {
      result.add(item);
      added.add(item);
    } else {
      seen.add(item);
    }
  }

  return result;
}

void grade(int a, int b) {
  int percent = (a / b * 100).round();
  if(percent >= 0 && percent <= 100){
    if()
  }
}
