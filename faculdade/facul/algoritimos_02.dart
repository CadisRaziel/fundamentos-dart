import 'dart:io';

void main() {
  mediaNotas();
}

void mediaNotas() {
  double media;
  double notaFinal;
  print('Digite a nota 1');
  double nota1 = double.parse(stdin.readLineSync() ?? '');
  print('Digite a nota 2');
  double nota2 = double.parse(stdin.readLineSync() ?? '');
  print('Digite a nota 3');
  double nota3 = double.parse(stdin.readLineSync() ?? '');

  media = (nota1 + nota2 + nota3) / 3;

  if (media <= 3) {
    print("Reprovado, média: $media");
  } else if (media <= 7) {
    notaFinal = media - 10;
    print("Nota a ser tirada no exame = $notaFinal");
    print("Exame, média: $media");
  } else {
    print("Aprovado, média: $media");
  }
}
