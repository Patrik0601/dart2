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
}
