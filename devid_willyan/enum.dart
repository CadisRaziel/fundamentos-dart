//!NOVO ENUM

void main() {
  var pagamento = Pagamento();
  var pagamento2 = Pagamento2();
  pagamento.pagar(TipoPagamento.CARTAO);
  pagamento2.pagar(TipoPagamento2.CARTAO);
}

enum TipoPagamento {
  PIX('Pix'),
  BOLETO('Boleto'),
  CARTAO('Cartao');

  final String value;
  const TipoPagamento(this.value);
}

enum TipoPagamento2 {
  //!posso tamber usar int com string
  PIX(1, 'Pix'),
  BOLETO(2, 'Boleto'),
  CARTAO(3, 'Cartao');

  final int id;
  final String value;
  const TipoPagamento2(this.id, this.value);
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.value == 'Pix') {
      print('Pagando com pix');
    } else if (tipoPagamento.value == 'Boleto') {
      print('Pagando com boleto');
    } else if (tipoPagamento.value == 'Cartao') {
      print('Pagando com cartão');
    }
  }
}

class Pagamento2 {
  void pagar(TipoPagamento2 tipoPagamento) {
    if (tipoPagamento.value == 'Pix') {
      print('Pagando com pix ID:${tipoPagamento.id}');
    } else if (tipoPagamento.value == 'Boleto') {
      print('Pagando com boleto ID:${tipoPagamento.id}');
    } else if (tipoPagamento.value == 'Cartao') {
      print('Pagando com cartão ID:${tipoPagamento.id}');
    }
  }
}
