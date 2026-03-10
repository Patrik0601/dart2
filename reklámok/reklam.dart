import 'dart:io';

void main(){
  File rendeles = File("./reklámok/rendel.txt");
  List<String> lista = rendeles.readAsLinesSync();
  Map<String, List<dynamic>> stat ={
    'PL' : [0,0,0],
    'TV' : [0,0,0],
    'NR' : [0,0,0]
  };
  for(String i in lista){
    List<String> row = i.split(" ");
    int nap = int.parse(i[0]);
    String varos = i[1];
    int rendelesekdb = int.parse(row[2]);
  }
  
}