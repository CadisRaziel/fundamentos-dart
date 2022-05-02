import 'clients.dart';

void main() {
  var cli = Clientes(
      nome: "Vitor",
      cpf: '362.912.028-83',
      cnpj: '20202020',
      razaoSocial: '10101010');
}

//! Para acessar o assert precisamos entra na pasta que contem o arquivo e roda o seguinte commando
//! dart --enable-asserts nome_arquivo