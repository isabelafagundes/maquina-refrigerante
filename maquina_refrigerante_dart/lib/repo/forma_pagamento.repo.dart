import 'package:maquina_refrigerante/domain/forma_pagamento.dart';

abstract class FormaPagamentoRepo {
  Future<List<FormaPagamento>> obterFormasPagamento();
}
