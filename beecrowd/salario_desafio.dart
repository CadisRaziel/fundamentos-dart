import 'dart:io';

void main() {
  int numero = int.parse(stdin.readLineSync() ?? '');
  int horasTrabalhada = int.parse(stdin.readLineSync() ?? '');
  double valor = double.parse(stdin.readLineSync() ?? '');

  int number = numero;
  double result = horasTrabalhada * valor;

  print('NUMBER = $number');
  print('SALARY = ${result.toStringAsFixed(2)}');
}
