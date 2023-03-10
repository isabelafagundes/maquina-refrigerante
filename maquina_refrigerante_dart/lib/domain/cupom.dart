import 'package:maquina_refrigerante/domain/finalizadora.dart';
import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/domain/item_cupom.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';

class Cupom {
  int numeroCupom;
  List<ItemCupom> itens = [];
  List<Finalizadora> finalizadoras = [];

  Cupom._(this.numeroCupom);

  factory Cupom.criar(int numeroCupom) {
    // TODO validar criar
    return Cupom._(numeroCupom);
  }

  double calcularValorTotal() {
    double valor = 0.0;
    itens.forEach((item) => valor += item.obterValorTotal());
    return valor;
  }

  double calcularValorPago() {
    double valor = 0.0;
    finalizadoras.forEach((finalizadora) => valor += finalizadora.obterValorTotal());
    return valor;
  }

  double calcularTroco() {
    if (finalizadoras.isNotEmpty && calcularValorTotal() < calcularValorPago())
      return calcularValorPago() - calcularValorTotal();
    else
      return 0.0;
  }

  void registrar(Refrigerante refrigerante) {
    ItemCupom itemCupom = ItemCupom.criar(refrigerante);
    if (validarExistencia(itemCupom))
      itens[itens.indexOf(itemCupom)].quantidade++;
    else
      itens.add(itemCupom);
  }

  void pagar(FormaPagamento formaPagamento) {
    Finalizadora finalizadora = Finalizadora.criar(formaPagamento);
    if (verificarExistencia(finalizadora))
      finalizadoras[finalizadoras.indexOf(finalizadora)].quantidade++;
    else
      finalizadoras.add(finalizadora);
  }

  double calcularFaltante() {
    if (finalizadoras.isNotEmpty && calcularValorTotal() > calcularValorPago())
      return calcularValorTotal() - calcularValorPago();
    else
      return 0.0;
  }

  int obterQuantidade(String descricao) {
    int quantidade = 0;
    for (ItemCupom item in itens) {
      if (item.descricao == descricao) {
        quantidade = item.quantidade;
      }
    }
    return quantidade;
  }

  void limparCupom() {
    _limparItens();
    _limparFinalizadoras();
  }

  void _limparItens() {
    itens.clear();
  }

  void _limparFinalizadoras() {
    finalizadoras.clear();
  }

  bool validarExistencia(ItemCupom item) {
    return itens.contains(item);
  }

  bool verificarExistencia(Finalizadora finalizadora) {
    return finalizadoras.contains(finalizadora);
  }
}
