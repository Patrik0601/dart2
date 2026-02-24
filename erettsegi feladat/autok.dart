import 'dart:io';

void main() {
  File file = File("./erettsegi feladat/jeladas.txt");
  List<String> lines = file.readAsLinesSync();
  List<Map<String, dynamic>> autok = [];
  for (String line in lines) {
    List<String> row = line.split('\t');
    autok.add({
      'rendszam': row[0],
      'ido': int.parse(row[1]) * 60 + int.parse(row[2]),
      'sebesseg': int.parse(row[3]),
    });
  }
  print(autok[0]);

  print("2.feladat: ");
  var utolso = autok.last;
  var ido = utolso['ido'];
  var ora = ido ~/ 60;
  var perc = ido % 60;
  print(
    'Az utolsó jeladás időpontja ${ora}:${perc}, a jármű rendszáma ${utolso['rendszam']}',
  );

  print("3.feladat: ");
  var elso = autok.first;
  print('Az első jármű: ${elso['rendszam']}');
  List<String> idopontok = [];
  for (var auto in autok) {
    if (auto['rendszam'] == elso['rendszam']) {
      var ido = auto['ido'];
      var ora = ido ~/ 60;
      var perc = ido % 60;
      idopontok.add('${ora}:${perc}');
    }
  }
  print('Jeladásainak időpontjai: ${idopontok.join(' ')}');

  print("4.feladat: ");
  print("Kérem adja meg az órát: ");
  ora = int.tryParse(stdin.readLineSync()!);
  print("Kérem adja meg a percet: ");
  perc = int.tryParse(stdin.readLineSync()!);
  ido = ora * 60 + perc;
  int counter = 0;
  for (var auto in autok) {
    if (auto['ido'] as int == ido) {
      counter++;
    }
  }
  print("A jeladatok száma: ${counter}");

  print("5.feladat: ");
  int maxSebesseg = 0;
  List<String> rendszamok = [];
  for (var auto in autok) {
    if (auto['sebesseg'] as int == maxSebesseg) {
      rendszamok.add(auto['rendszam']);
    } else if (auto['sebesseg'] as int > maxSebesseg) {
      maxSebesseg = auto['sebesseg'];
      rendszamok = [auto['rendszam']];
    }
  }
  print("A legnagyobb sebesség: ${maxSebesseg}");
  print("A járművek: ${rendszamok.join(' ')}");

  print("6.feladat: ");
  print("Kérem adjon meg egy rendszámot: ");
  var rendszam = stdin.readLineSync()!;
  for (var auto in autok) {
    if (auto['rendszam'] as String == rendszam) {
      var ido = auto['ido'] as int;
      var ora = ido ~/ 60;
      var perc = ido % 60;
      print("${ora}:${perc} ${auto['sebesseg']} km");
    }
  }
}
