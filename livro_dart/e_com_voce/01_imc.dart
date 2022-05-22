void main() {
  int idade = 29;
  double altura = 1.68; // centimetros
  double peso = 64.2; // quilogramas

  double imc = peso / (altura * altura);
  print('IMC: $imc');

  if (idade < 20) {
    /// crianças/adolescentes
    if (imc < 13) {
      print('Abaixo do peso -> crianças/adolescentes');
    } else if (imc >= 13 && imc < 16.8) {
      print('Peso normal ideal -> crianças/adolescentes');
    } else if (imc >= 16.8 && imc < 18.3) {
      print('Sobrepeso -> crianças/adolescentes');
    } else {
      print('Obesidade');
    }
  } else if (idade >= 20 && idade < 59) {
    /// adultos
    if (imc < 18.5) {
      print('Abaixo do peso -> adultos');
    } else if (imc >= 18.5 && imc < 25) {
      print('Peso normal ideal adultos');
    } else if (imc >= 25 && imc < 30) {
      print('Sobrepeso adultos');
    } else if (imc >= 30 && imc < 35) {
      print('Obesidade grau 1 adultos');
    } else if (imc >= 35 && imc < 40) {
      print('Obesidade grau 2 adultos');
    } else {
      print('Obesidade grau 3 adultos');
    }
  } else {
    /// idosos
    if (imc < 22) {
      print('Abaixo do peso -> idosos');
    } else if (imc >= 22 && imc < 27) {
      print('Peso normal ideal -> idosos');
    } else {
      print('Obesidade -> idosos');
    }
  }
}
