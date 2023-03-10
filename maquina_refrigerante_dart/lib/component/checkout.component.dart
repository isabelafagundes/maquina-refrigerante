import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante/use_case/cupom.use_case.dart';
import 'package:maquina_refrigerante/use_case/forma_pagamento.use_case.dart';
import 'package:maquina_refrigerante/use_case/refrigerante.use_case.dart';

class CheckoutComponent {
  late RefrigeranteUseCase refrigeranteUseCase;
  late CupomUseCase cupomUseCase;
  late FormaPagamentoUseCase formaPagamentoUseCase;

  void inicializar(RefrigeranteUseCase refrigeranteUseCase, CupomUseCase cupomUseCase, FormaPagamentoUseCase formaPagamentoUseCase){
   this.refrigeranteUseCase = refrigeranteUseCase;
   this.cupomUseCase = cupomUseCase;
   this.formaPagamentoUseCase = formaPagamentoUseCase;
  }

  void obterRefrigerantesDisponiveis() {
    refrigeranteUseCase.obterRefrigerantesDisponiveis();
  }

  void obterFormasPagamento() {
    formaPagamentoUseCase.obterFormasPagamento();
  }

  void registrar(Refrigerante refrigerante) {
    cupomUseCase.registrar(refrigerante);
  }

  void pagar(FormaPagamento formaPagamento) {
    cupomUseCase.pagar(formaPagamento);
  }

  void finalizar() {
    cupomUseCase.finalizar();
  }

  void limpar() {
    cupomUseCase.limparCupom();
  }

  void inicializarCupom(int numeroCupom) {
    cupomUseCase.inicializarCupom(numeroCupom);
  }
}