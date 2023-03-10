import 'package:flutter/material.dart';
import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/btn_forma_pagamento.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/grid_formas_pagamento.widget.dart';

class CardFormasPagamento extends StatelessWidget {
  const CardFormasPagamento({Key? key, required this.cupom, required this.aoClicarPagar, required this.formasPagamento})
      : super(key: key);
  final Cupom cupom;
  final Function(FormaPagamento) aoClicarPagar;
  final List<FormaPagamento> formasPagamento;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kMarginPadrao * 2),
      child: GridFormasPagamentoWidget(
        quantidade: formasPagamento.length,
        builder: (context, i) => BtnFormaPagamentoWidget(
          valor: formasPagamento[i].valor,
          onTap: () {
            aoClicarPagar(formasPagamento[i]);
          },
        ),
      ),
    );
  }
}
