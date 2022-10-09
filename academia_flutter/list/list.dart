void main() {
  final numerosGerados = List.generate(10, (index) => index);
  final StringGerados = List.generate(10, (index) => 'Indice ${index + 1}');

  List<String> repeticoes = List.filled(10, 'Vitor');

  for (var oi in numerosGerados) {
    print('Numeros -> $oi');
  }
  for (var oi in StringGerados) {
    print('Strings -> $oi');
  }
  for (var oi in repeticoes) {
    print('Repeticoes -> $oi');
  }

  final numerosGeradosParaCalculo = List.generate(100, (index) => index);
  var soma = numerosGeradosParaCalculo.fold(
      0, (previousValue, numero) => previousValue += numero);
  print('numerosParaCalculo => $soma');

  //collection if
  var promocaoAtiva = true;
  var produtos = ['refri', 'agua', if (promocaoAtiva) 'suco de laranja'];
  print(produtos);

  //collection for
  var listInst = [1, 2, 3];
  var listStrings = ['#0', for (var i in listInst) '#$i'];
  print(listStrings);
}
