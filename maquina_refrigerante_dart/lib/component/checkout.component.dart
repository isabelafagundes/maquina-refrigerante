import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante/repo/cupom.repo.dart';
import 'package:maquina_refrigerante/repo/forma_pagamento.repo.dart';
import 'package:maquina_refrigerante/repo/refrigrerante.repo.dart';
import 'package:maquina_refrigerante/state/checkout.state.dart';
import 'package:maquina_refrigerante/use_case/cupom.use_case.dart';
import 'package:maquina_refrigerante/use_case/forma_pagamento.use_case.dart';
import 'package:maquina_refrigerante/use_case/refrigerante.use_case.dart';

class CheckoutComponent {
  late RefrigeranteUseCase refrigeranteUseCase;
  late CupomUseCase cupomUseCase;
  late FormaPagamentoUseCase formaPagamentoUseCase;

  void inicializar(
    RefrigeranteRepo refrigeranteRepo,
    CupomRepo cupomRepo,
    FormaPagamentoRepo formaPagamentoRepo,
    CheckoutState state,
  ) {
    refrigeranteUseCase = RefrigeranteUseCase(refrigeranteRepo, state);
    cupomUseCase = CupomUseCase(cupomRepo, state);
    formaPagamentoUseCase = FormaPagamentoUseCase(state, formaPagamentoRepo);
  }

  Future<void> obterRefrigerantesDisponiveis() async {
    refrigeranteUseCase.obterRefrigerantesDisponiveis();
  }

  Future<void> obterFormasPagamento() async {
    formaPagamentoUseCase.obterFormasPagamento();
  }

  Future<void> registrar(Refrigerante refrigerante) async {
    cupomUseCase.registrar(refrigerante);
  }

  Future<void> pagar(FormaPagamento formaPagamento) async {
    cupomUseCase.pagar(formaPagamento);
  }

  Future<void> finalizar() async {
    cupomUseCase.finalizar();
  }

  Future<void> limpar() async {
    cupomUseCase.limparCupom();
  }

  Future<void> inicializarCupom(int numeroCupom) async {
    cupomUseCase.inicializarCupom(numeroCupom);
  }

  Future<void> salvar() async {
    cupomUseCase.salvarCupom();
  }
}
