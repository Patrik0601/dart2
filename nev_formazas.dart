import 'dart:io';

void main(){
    print("Adjon meg egy nevet:");
    String? name = stdin.readLineSync();
    List<String> parts = name!.split(" ");
    String firstPart = parts[0];
    String secondPart = parts[1];
    print("A név a név részek nagy betűvel kezdődnek: ${firstPart[0].toUpperCase()}${firstPart.substring(1)} ${secondPart[0].toUpperCase()}${secondPart.substring(1)}");
}