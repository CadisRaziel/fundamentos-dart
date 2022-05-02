//! Repare que temos uma variavel 'resultado' que não esta sendo utilizada....
//! Porém mesmo assim se rodarmos esse código essa variavel vai chamar essa função e executa-la
//! mais porque acontece isso ? isso é o famoso metodo custoso, mesmo que a variavel nao esta sendo usada ela é chamada
//! (Isso quando tenho um metodo atribuido a uma variavel)
void main() {
  double resultado = _getValor();
  print('Chamando a main');
}

double _getValor() {
  print('Chamando a _getValor');
  return 0.0;
}

//! Para que essa variavel não execute essa função ja que a variavel não esta sendo usada
//! usamos o operador 'late'
void main2() {
  late double resultado = _getValor();
  print('Chamando a main');
}

double _getValor2() {
  print('Chamando a _getValor');
  return 0.0;
}

//? Não se esqueça se for utilizar late, lembre sembre de atribuir essa variavel logo em seguida !!
