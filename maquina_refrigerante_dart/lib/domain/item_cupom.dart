import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante/use_case/exceptions/descricao_invalida.dart';
import 'package:maquina_refrigerante/use_case/exceptions/valor_invalido.exception.dart';


class ItemCupom {
  String descricao;
  int quantidade;
  double valorUnitario;

  ItemCupom._(this.descricao, this.quantidade, this.valorUnitario);

  factory ItemCupom.criar(Refrigerante refrigerante) {
    ItemCupom itemCupom = ItemCupom._(refrigerante.descricao, 1, refrigerante.valorUnitario);
    itemCupom._validar();
    return itemCupom;
  }

  void _validar() {
    _validarDescricao();
    _validarValor();
  }

  void _validarDescricao() {
    if (descricao.isEmpty) throw DescricaoInvalida();
  }

  void _validarValor() {
    if (valorUnitario <= 0) throw ValorInvalido();
  }

  double obterValorTotal() {
    return valorUnitario * quantidade;
  }

  @override
  bool operator ==(Object outro) {
    if (outro is ItemCupom) return this.descricao == outro.descricao;
    return this == outro;
  }
}
