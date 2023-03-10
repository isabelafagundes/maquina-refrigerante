import 'package:flutter/material.dart';
import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/btn_pagar.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/btn_voltar.widget.dart';
import 'package:maquina_refrigerante_flutter/utils/conversao_para_real.utils.dart';

class BotoesPagamentoPageWidget extends StatelessWidget {
  const BotoesPagamentoPageWidget({Key? key, required this.cupom, required this.aoClicarVoltar}) : super(key: key);
  final Cupom cupom;
  final Function() aoClicarVoltar;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(width: 15),
        BtnVoltarWidget(aoClicarVoltar: aoClicarVoltar),
        const Spacer(),
        BtnPagarWidget(
          total: ConversaoParaRealUtils.conversaoParaReal(cupom.calcularValorTotal()),
          valorTotal: cupom.calcularValorTotal(),
          valorPagoTotal: cupom.calcularValorPago(),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
