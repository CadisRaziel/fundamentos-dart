import 'dart:io';

void main() {
  input();
}

void input() {
  int result;
  print('Digite o numero 1: ');
  int n1 = int.parse(stdin.readLineSync() ?? '');
  print('Digite o numero 2: ');
  int n2 = int.parse(stdin.readLineSync() ?? '');
  print('Digite o numero 3: ');
  int n3 = int.parse(stdin.readLineSync() ?? '');
  print('Digite o numero 4: ');
  int n4 = int.parse(stdin.readLineSync() ?? '');

  result = n1 + n2 + n3 + n4;
  print('Resultado = $result');
}
