import 'dart:io';
import 'dart:math' as math;

void main() {
  areaDoCirculo();
}

/*Faça um programa que calcule e mostre a área de um círculo. Sabe-se que: Área = ! * R² */

void areaDoCirculo() {
  double area;
  print('Digite o raio do circulo: ');
  double raio = double.parse(stdin.readLineSync() ?? '');

  area = math.pi * (raio * raio);
  print(math.pi);
  print('A Area do trinangulo é: ${area.toStringAsFixed(2)}');
}
