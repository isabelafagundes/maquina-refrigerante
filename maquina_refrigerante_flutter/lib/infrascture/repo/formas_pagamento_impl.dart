import 'package:maquina_refrigerante/domain/finalizadora.dart';
import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/domain/tipo_pagamento.dart';
import 'package:maquina_refrigerante/repo/forma_pagamento.repo.dart';


class FormasPagamentoImpl implements FormaPagamentoRepo {
  @override
  List<FormaPagamento> obterFormasPagamento() {
    List<FormaPagamento> formasPagamento = [];
    formasPagamento.add(FormaPagamento.carregar(TipoPagamento.moeda, 0.25));
    formasPagamento.add(FormaPagamento.carregar(TipoPagamento.moeda, 0.50));
    formasPagamento.add(FormaPagamento.carregar(TipoPagamento.moeda, 1.00));
    formasPagamento.add(FormaPagamento.carregar(TipoPagamento.nota, 2.00));
    formasPagamento.add(FormaPagamento.carregar(TipoPagamento.nota, 5.00));
    formasPagamento.add(FormaPagamento.carregar(TipoPagamento.nota, 10.00));
    formasPagamento.add(FormaPagamento.carregar(TipoPagamento.nota, 20.00));
    formasPagamento.add(FormaPagamento.carregar(TipoPagamento.nota, 50.00));
    formasPagamento.add(FormaPagamento.carregar(TipoPagamento.nota, 100.00));

    return formasPagamento;
    // TODO: implement obterFormasPagamento
    throw UnimplementedError();
  }

}