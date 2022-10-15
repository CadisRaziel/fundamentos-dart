import 'dart:io';

void main() {
  triangle();
}

void triangle() {
  print('Primeiro lado de um triangulo, digite um numero: ');
  int x = int.parse(stdin.readLineSync() ?? '');
  print('Segundo lado de um triangulo, digite um numero: ');
  int y = int.parse(stdin.readLineSync() ?? '');
  print('Terceiro lado de um triangulo, digite um numero: ');
  int z = int.parse(stdin.readLineSync() ?? '');
  if (x == y && y == z) {
    print('triângulo equilátero: três lados iguais.');
  } else if (x != y && y != z) {
    print('triângulo Escaleno: três lados diferentes.');
  } else {
    print('triângulo isósceles: dois lados iguais.');
  }
}
