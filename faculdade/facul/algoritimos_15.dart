import 'dart:io';
import 'dart:math' as math;

void main() {
  program();
}

/*Sabe-se que:
pé = 12 polegadas
1 jarda = 3 pés
1 milha = 1,760 jarda
Faça um programa que receba uma medida em pés, faça as conversões a seguir e mostre os resultados.
a) polegadas;
b) jardas;
c) milhas
 */

void program() {
  num polegada;
  num jarda;
  num milhas;
  print('Digite a medida em pés: ');
  num pes = num.parse(stdin.readLineSync() ?? '');

  polegada = 12 * pes;
  jarda = pes / 3;
  milhas = jarda / 1760;

  print("Polegadas: $polegada");
  print("Jarda: ${jarda.toStringAsFixed(2)}");
  print("Milhas: ${milhas.toStringAsFixed(8)}");
}


//pagina 58