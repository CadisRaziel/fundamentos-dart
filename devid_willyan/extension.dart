void main() {
  String nome = 'vitor';

  //Com a classe
  print(Utils().toFirstCharToUpperCase(nome));

  //Com a extension
  print(nome.toFirstCharToUpperCase());

  //Enum com super poder
  print(EnumTeste.enumValue.toValue());
  print(EnumTeste.enumNovo.toValue());
}

//*Criando metodo com extension
//! Metodo para deixar a primeira letra maiuscula
extension ExtensionString on String {
  String toFirstCharToUpperCase() {
    return this[0].toUpperCase() + this.substring(1);
  }
}

//*Criando metodo com classe
//! Metodo para deixar a primeira letra maiuscula
class Utils {
  toFirstCharToUpperCase(String value) {
    return value[0].toUpperCase() + value.substring(1);
  }
}

//? Dando poder a um enum
enum EnumTeste { enumValue, enumNovo }

extension ExtensionEnum on Enum {
  String toValue() {
    Map mapinho = {
      EnumTeste.enumValue: 'Oi',
      EnumTeste.enumNovo: 'Tchau',
    };
    return mapinho[this];
  }
}
