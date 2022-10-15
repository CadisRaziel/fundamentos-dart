import 'dart:io';

void main() {
  areaDoTriangulo();
}

/*Faça um programa que calcule e mostre a área de um triângulo. Sabe-se que: Área = (base * altura)/2. */

void areaDoTriangulo() {
  double area;
  print('Digite o valor da base: ');
  double base = double.parse(stdin.readLineSync() ?? '');
  print('Digite o valor da altura: ');
  double altura = double.parse(stdin.readLineSync() ?? '');

  area = (base * altura) / 2;
  print('A Area do trinangulo é: ${area.toStringAsFixed(2)}');
}
