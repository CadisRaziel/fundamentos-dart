import 'dart:io';

void main() {
  double a = double.parse(stdin.readLineSync() ?? '');
  double b = double.parse(stdin.readLineSync() ?? '');
  double c = double.parse(stdin.readLineSync() ?? '');

  double media = ((2 * a) + (3 * b) + (5 * c)) / 10;

  print("MEDIA = ${media.toStringAsFixed(1)}");
}
