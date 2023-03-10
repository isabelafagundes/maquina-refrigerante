import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/domain/tipo_pagamento.dart';
import 'package:maquina_refrigerante/use_case/exceptions/tipo_invalido.exception.dart';
import 'package:maquina_refrigerante/use_case/exceptions/valor_invalido.exception.dart';


class Finalizadora {
  TipoPagamento tipo;
  double valor;
  int quantidade;

  Finalizadora._(this.tipo, this.valor, this.quantidade);

  factory Finalizadora.criar(FormaPagamento formaPagamento) {
    Finalizadora finalizadora = Finalizadora._(formaPagamento.tipo, formaPagamento.valor, 1);
    finalizadora._validar();
    return finalizadora;
  }

  double obterValorTotal() {
    return valor * quantidade;
  }

  void _validar() {
    _validarValor(valor);
    _validarTipo(tipo);
  }

  void _validarValor(double valor) {
    if (valor <= 0) throw ValorInvalido();
  }

  void _validarTipo(TipoPagamento tipo) {
    if (tipo != TipoPagamento.nota && tipo != TipoPagamento.moeda) throw TipoInvalido();
  }

  @override
  bool operator ==(Object outro) {
    if (outro is Finalizadora) return this.valor == outro.valor;
    return this == outro;
  }
}
