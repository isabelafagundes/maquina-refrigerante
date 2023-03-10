import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/repo/forma_pagamento.repo.dart';
import 'package:maquina_refrigerante/state/checkout.state.dart';

class FormaPagamentoUseCase {
  CheckoutState _state;
  FormaPagamentoRepo _repo;

  FormaPagamentoUseCase(this._state, this._repo);

  void obterFormasPagamento() {
    _state.carregando = true;
    _state.atualizar();
    adiquirirFormasPagamento();
    _state.carregando = false;
    _state.atualizar();
  }

  void adiquirirFormasPagamento() {
    try {
      List<FormaPagamento> formaPagamento = _repo.obterFormasPagamento();
      _state.formasPagamento = formaPagamento;
    } catch (erro) {
      adicionarErro("Não foi possível obter finalizadoras!");
    }
  }

  void adicionarErro(String mensagemErro) {
    _state.erro = true;
    _state.mensagemErro = mensagemErro;
  }
}
