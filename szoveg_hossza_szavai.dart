import 'dart:io';

void main(){
  print("Adjon meg egy mondatot:");
  String? sentence = stdin.readLineSync();
  print("A mondat hossza:${sentence!.length}");
  
}