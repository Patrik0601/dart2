import 'dart:developer';

void main(){
  String headTail(String txt){
    if(txt.length <= 0)
      return txt;
    else if(txt.length % 2 == 0)
      return txt[txt.length - 2] + txt[txt.length-1] + txt[0] + txt[1];
    else
      return txt[txt.length - 2] + txt[txt.length-1] + txt.substring(2, txt.length-2) + txt[0] + txt[1];
  }
  print(headTail("xxoo"));
  print(headTail("xxAoo"));
  print(headTail("xoAox"));

  String oddFizz(int number){
    if(number % 2 != 0 && number % 3 == 0){
      return "OddFizz";
    }
    else if(number % 2 != 0){
      return "Odd";
    }
    else if(number % 3 == 0){
      return "Fizz";
    }
    else{
      return number.toString();
    }
  }
  print(oddFizz(4));
  print(oddFizz(6));
  print(oddFizz(7));
  print(oddFizz(9));

List<int>finacci(int number){
    List<int> kn = [];
    for(int i = 0; i < number; i++){
      if(i < 2){
        kn.add(i);
      }
      else{
        kn.add(kn[i-1] + kn[i-2]);
      }
    }
    return kn;
  }
  print(finacci(0));
  print(finacci(1));
  print(finacci(2));
  print(finacci(3));
  print(finacci(10));

  String vowelLower(String txt){
    List<String> vowels = [
      "a",
      "á",
      "e",
      "é",
      "i",
      "í",
      "o",
      "ó",
      "ö",
      "ő",
      "u",
      "ú",
      "ü",
      "ű"
    ];
    String newTxt = "";
    for(int i = 0; i < txt.length; i++){
      if(vowels.contains(txt[i].toLowerCase())){
        newTxt += txt[i].toLowerCase();
      }
      else{
        newTxt += txt[i].toUpperCase();
      }
    }
    return newTxt;
  }
  print(vowelLower("alma"));
  print(vowelLower("ablak"));
  print(vowelLower("ABLAK"));
}