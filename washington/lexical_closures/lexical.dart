void main() {
  var addNumero = (int i) {
    return (int y) => i + y;
  };

  var addNumero2 = addNumero(5);
  var resultado = addNumero2(5);

  print(resultado);

  //! é basicamente uma função retornando outra função e com isso podemos armazena-las em variaveis e junta-las
}
