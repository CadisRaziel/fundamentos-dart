void main() {
  bool valorAtivo = true;

  List<int> lista1 = [1, 2, 3];
  List<int> lista2 = [4, 5, 6];

  //! ... -> operador spread, ele espalha uma lista dentro de outra lista
  //! Repare que conseguimos fazer um if dentro de uma lista (caso valorAtivo for true ele vai incluir o 7 na lista)
  var listTotal = [0, ...lista1, ...lista2, if (valorAtivo) 7];
}
