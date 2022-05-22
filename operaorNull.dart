void main() {
  var numero = getNumero();
  var numero2 = getNumero();

  numero ??= 50; //print 50
  numero2 ?? 50; //print null
  print(numero);
  print(numero2);
}

int? getNumero() => null;
