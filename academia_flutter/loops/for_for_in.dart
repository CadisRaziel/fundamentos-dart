void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['um', 'dois', 'tres', 'quatro', 'cinco'];

  print('Imprimindo numeros com for convencional');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('Imprimindo nomes com for convencional');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  print('Imprimindo numeros com for in');
  for (var i in numeros) {
    print(i);
  }

  print('Imprimindo nomes com for in');
  for (var i in nomes) {
    print(i);
  }

  print('Imprimindo nomes com for convencional e break');
  for (var i = 0; i < nomes.length; i++) {
    if (nomes[i] == 'tres') {
      break;
    }
    print(nomes[i]);
  }

  print('Imprimindo nomes com for in e break');
  for (var i in nomes) {
    if (i == 'tres') {
      break;
    }
    print(i);
  }

  print('Imprimindo nomes com for convencional com continue');
  for (var i = 0; i < nomes.length; i++) {
    //vai pular o 'tres'
    if (nomes[i] == 'tres') {
      continue;
    }
    print(nomes[i]);
  }

  print('Imprimindo nomes com for in com continue');
  //vai pular o 'tres'
  for (var i in nomes) {
    if (i == 'tres') {
      continue;
    }
    print(i);
  }

  //Se eu quiser trabalhar com indices eu uso o FOR
  //se eu quiser varrer toda minha lista eu uso FOR IN (porém posso usar break tambem)
}
