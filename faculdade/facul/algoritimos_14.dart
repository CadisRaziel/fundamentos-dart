import 'dart:io';
import 'dart:math' as math;

void main() {
  numeroPositivo();
}

/*Faça um programa que receba um número positivo e maior que zero, calcule e mostre:
a) o número digitado ao quadrado;
b) o número digitado ao cubo;
c) a raiz quadrada do número digitado;
d) a raiz cúbica do número digitado
 */

void numeroPositivo() {
  num quadrado;
  num cubo;
  num raizQuadrada;
  // num raizCubica;

  print('Digite o numero: ');
  num numero = num.parse(stdin.readLineSync() ?? '');

  quadrado = numero * numero;
  cubo = numero * numero * numero;
  raizQuadrada = math.sqrt(numero);
  // raizCubica = math.sqrt(numero);

  print('Numero digitado ao quadrado: $quadrado');
  print('Numero digitado ao cubo: $cubo');
  print('Numero digitado em raiz quadrada: $raizQuadrada');
  // print('Numero digitado em raiz cubica: $raizCubica');
}


//pagina 58