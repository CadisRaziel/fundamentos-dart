import 'dart:io';
import 'dart:math' as math;

void main() {
  program();
}

/*O custo ao consumidor de um carro novo é a soma do preço de fábrica com o percentual de lucro do
distribuidor e dos impostos aplicados ao preço de fábrica. Faça um programa que receba o preço de fábrica de um veículo, o percentual de lucro do distribuidor e o percentual de impostos, calcule e mostre:
a) o valor correspondente ao lucro do distribuidor;
b) o valor correspondente aos impostos;
c) o preço final do veículo. 
 */

void program() {
  num lucroDis;
  num impostos;
  num precoFinalCarro;

  print('Digite preco de fabrica: ');
  num precoFabrica = num.parse(stdin.readLineSync() ?? '');
  print('Digite o percentual de lucro do distribuidor: ');
  num lucroDistribuidor = num.parse(stdin.readLineSync() ?? '');
  print('Digite o percentual impostos: ');
  num percentualImpostos = num.parse(stdin.readLineSync() ?? '');

  lucroDis = precoFabrica * lucroDistribuidor / 100;
  impostos = precoFabrica * percentualImpostos / 100;
  precoFinalCarro = precoFabrica + lucroDis + impostos;

  print("Lucro do distribuidor: R\$${lucroDis.toStringAsFixed(2)}");
  print("Impostos: R\$${impostos.toStringAsFixed(2)}");
  print("Preco final do carro: R\$${precoFinalCarro.toStringAsFixed(2)}");
}
