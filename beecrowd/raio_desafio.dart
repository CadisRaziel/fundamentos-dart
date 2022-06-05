import 'dart:io';

void main() {
  double n = 3.14159;
  print("> Qual o raio para cálculo?");
  double raio = double.parse(stdin.readLineSync() ?? '');

  double area = raio * raio * n;

  print('A = ${area.toStringAsFixed(4)}');
}
