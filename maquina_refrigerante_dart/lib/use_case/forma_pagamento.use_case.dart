import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/repo/forma_pagamento.repo.dart';
import 'package:maquina_refrigerante/state/checkout.state.dart';

class FormaPagamentoUseCase {
  CheckoutState _state;
  FormaPagamentoRepo _repo;

  FormaPagamentoUseCase(this._state, this._repo);

  Future<void> obterFormasPagamento() async {
    _state.carregando = true;
    _state.atualizar();
    await _adquirirFormasPagamento();
    _state.carregando = false;
    _state.atualizar();
  }

  Future<void> _adquirirFormasPagamento() async {
    try {
      List<FormaPagamento> formaPagamento = await _repo.obterFormasPagamento();
      _state.formasPagamento = formaPagamento;
    } catch (erro) {
      _adcionarErro("Não foi possível obter finalizadoras!");
    }
  }

  Future<void> _adcionarErro(String mensagemErro) async {
    _state.erro = true;
    _state.mensagemErro = mensagemErro;
  }
}
