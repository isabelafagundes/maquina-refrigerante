import 'package:flutter/material.dart';
import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/botoes_cardapio.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/container_padrao.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/card_cardapio.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/card_registradora.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/frase_selecione_bebida.widget.dart';

class CheckInPage extends StatefulWidget {
  const CheckInPage(
      {Key? key,
      required this.cupom,
      required this.refrigerantesDisponiveis,
      required this.aoSelecionarRefrigerante,
      required this.aoClicarPagamento,
      required this.aoClicarLimpar})
      : super(key: key);
  final Cupom cupom;
  final List<Refrigerante> refrigerantesDisponiveis;
  final Function(Refrigerante) aoSelecionarRefrigerante;
  final Function() aoClicarPagamento;
  final Function() aoClicarLimpar;

  @override
  State<CheckInPage> createState() => _CheckInPageState();
}

class _CheckInPageState extends State<CheckInPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            ContainerPadraoWidget(
              children: [
                if (widget.cupom.itens.isNotEmpty) CardRegistradoraWidget(
                  cupom: widget.cupom,
                  refrigerantes: widget.refrigerantesDisponiveis,
                  cor: kCorFonte.withOpacity(0.5),
                ),
                if (widget.cupom.itens.isEmpty) const FraseSelecioneBebida(),
              ],
            ),
            const SizedBox(height: 15),
            ContainerPadraoWidget(children: [
              GridCardapioWidget(
                  refrigerantes: widget.refrigerantesDisponiveis,
                  cupom: widget.cupom,
                  aoSelecionarRefrigerante: widget.aoSelecionarRefrigerante),
              const Spacer(),
              BotoesCardapioWidget(
                  cupom: widget.cupom,
                  aoClicarLimpar: widget.aoClicarLimpar,
                  aoClicarPagamento: widget.aoClicarPagamento),
              const SizedBox(height: 10)
            ]),
          ],
        ),
      ],
    );
  }

  @override
  void atualizar() {
    setState(() {});
  }
}
