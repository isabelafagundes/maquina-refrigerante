import 'package:maquina_refrigerante/domain/tipo_pagamento.dart';

class FormaPagamento {
  final TipoPagamento tipo;
  final double valor;

  FormaPagamento._(this.tipo, this.valor);

  factory FormaPagamento.carregar(TipoPagamento tipo, double valor) {
    return FormaPagamento._(tipo, valor);
  }
}
