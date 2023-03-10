import 'package:maquina_refrigerante/domain/forma_pagamento.dart';

abstract class FormaPagamentoRepo {
  List<FormaPagamento> obterFormasPagamento();
}
