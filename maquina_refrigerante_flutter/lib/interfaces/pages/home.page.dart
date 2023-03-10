import 'package:flutter/material.dart';
import 'package:maquina_refrigerante/component/checkout.component.dart';
import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante/state/checkout.state.dart';
import 'package:maquina_refrigerante/use_case/cupom.use_case.dart';
import 'package:maquina_refrigerante/use_case/forma_pagamento.use_case.dart';
import 'package:maquina_refrigerante/use_case/refrigerante.use_case.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/infrascture/repo/cupom_repo_impl.dart';
import 'package:maquina_refrigerante_flutter/infrascture/repo/formas_pagamento_impl.dart';
import 'package:maquina_refrigerante_flutter/infrascture/repo/refrigerantes_repo.impl.dart';
import 'package:maquina_refrigerante_flutter/interfaces/pages/check_in.page.dart';
import 'package:maquina_refrigerante_flutter/interfaces/pages/pagamento.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with CheckoutState, CheckoutComponent {
  void initState() {
    super.initState();
    inicializar(
        RefrigeranteUseCase(RefrigerantesRepoImpl(), this),
        CupomUseCase(CupomRepoImpl(), this),
        FormaPagamentoUseCase(this, FormasPagamentoImpl()));
    inicializarCupom(1);
    obterRefrigerantesDisponiveis();
    obterFormasPagamento();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: kPaddingPadrao * 2, horizontal: kPaddingPadrao * 6),
          child: telaPagamento
              ? PagamentoPage(
                  formasPagamento: formasPagamento,
                  cupom: cupom,
                  refrigerantesDisponiveis: refrigerantesDisponiveis,
                  aoClicarPagar: aoClicarPagar,
                  aoClicarVoltar: aoClicarVoltar)
              : CheckInPage(
                  cupom: cupom,
                  refrigerantesDisponiveis: refrigerantesDisponiveis,
                  aoSelecionarRefrigerante: aoSelecionarRefrigerante,
                  aoClicarPagamento: aoClicarPagamento,
                  aoClicarLimpar: aoClicarLimpar,
                ),
        ),
      ),
    );
  }

  void aoSelecionarRefrigerante(Refrigerante refrigerante) {
    registrar(refrigerante);
  }

  void aoClicarPagamento() {
    setState(() {
      if(cupom.itens.isNotEmpty) telaPagamento = true;
    });
  }

  void aoClicarLimpar() {
    setState(() {
      limpar();
    });
  }

  void aoClicarPagar(FormaPagamento formaPagamento) {
    if(cupom.itens.isNotEmpty) pagar(formaPagamento);
  }

  void aoClicarVoltar() {
    setState(() {
      telaPagamento = false;
    });
  }

  @override
  void atualizar() {
    setState(() {});
  }
}
