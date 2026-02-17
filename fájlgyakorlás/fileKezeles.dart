import 'dart:io';

void main(){
    File books = File('./fájlgyakorlás/books.txt');
    print(books.readAsStringSync());

    File cars = File('./fájlgyakorlás/cars.txt');
    String car = cars.readAsStringSync();
    List<String> carsList = car.split(', ');
    print(carsList);

    File cars2 = File('./fájlgyakorlás/cars2.txt');
    cars2.writeAsStringSync('\nThis is a new line.', mode: FileMode.append);
    print(cars2.readAsStringSync());

    File numbers = File('./fájlgyakorlás/numbers.txt');
    numbers.writeAsStringSync(", 215948", mode: FileMode.append);
    print(numbers.readAsStringSync());

}