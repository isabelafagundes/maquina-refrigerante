import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';

abstract class CheckoutState {
  List<Refrigerante> refrigerantesDisponiveis = [];
  List<FormaPagamento> formasPagamento = [];
  late Cupom cupom;

  bool telaPagamento = false;
  bool carregando = false;
  bool erro = false;
  String mensagemErro = "";

  void atualizar();
}