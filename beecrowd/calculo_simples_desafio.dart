// import 'dart:io';

// void main() {
//   final pecas1 = stdin.readLineSync();
//   final pecas2 = stdin.readLineSync();

//   final List<String> ValoresSeparados1 = pecas1!.split(" ");
//   final List<String> ValoresSeparados2 = pecas2!.split(" ");

//   int codigoPeca1 = int.parse(ValoresSeparados1[0]);
//   int numeroPeca1 = int.parse(ValoresSeparados1[1]);
//   double valorUnitarioPeca1 = double.parse(ValoresSeparados1[2]);

//   int codigoPeca2 = int.parse(ValoresSeparados2[0]);
//   int numeroPeca2 = int.parse(ValoresSeparados2[1]);
//   double valorUnitarioPeca2 = double.parse(ValoresSeparados2[2]);

//   double valorestotal1 = numeroPeca1 * valorUnitarioPeca1;
//   double valorestotal2 = numeroPeca2 * valorUnitarioPeca2;

//   double valtotal = valorestotal1 + valorestotal2;

//   print("VALOR A PAGAR: R\$ " + valtotal.toStringAsFixed(2));
// }

import 'dart:io';

void main() {
  // colocar os 3 valores direto 12 1 5.30
  List<String> line1 = stdin.readLineSync()!.split(" ");
  int cod1 = int.parse(line1[0]);
  int n1 = int.parse(line1[1]);
  double valor1 = double.parse(line1[2]);

  // colocar os 3 valores direto 16 2 5.10
  List<String> line2 = stdin.readLineSync()!.split(" ");
  int cod2 = int.parse(line2[0]);
  int n2 = int.parse(line2[1]);
  double valor2 = double.parse(line2[2]);

  double total = (n1 * valor1) + (n2 * valor2);
  print("VALOR A PAGAR: R\$ ${total.toStringAsFixed(2)}");
}
