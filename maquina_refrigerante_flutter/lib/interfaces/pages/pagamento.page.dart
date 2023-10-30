import 'package:flutter/material.dart';
import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/botoes_pagamento_page.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/card_formas_pagamento.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/container_padrao.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/card_registradora.widget.dart';

class PagamentoPage extends StatefulWidget {
  final Cupom cupom;
  final List<FormaPagamento> formasPagamento;
  final List<Refrigerante> refrigerantesDisponiveis;
  final Function(FormaPagamento) aoClicarPagar;
  final Function() aoClicarVoltar;

  const PagamentoPage(
      {Key? key,
      required this.cupom,
      required this.formasPagamento,
      required this.refrigerantesDisponiveis,
      required this.aoClicarPagar,
      required this.aoClicarVoltar})
      : super(key: key);

  @override
  State<PagamentoPage> createState() => _PagamentoPageState();
}

class _PagamentoPageState extends State<PagamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  ContainerPadraoWidget(
                    children: [
                      CardRegistradoraWidget(
                        cupom: widget.cupom,
                        refrigerantes: widget.refrigerantesDisponiveis,
                        cor: kCorFonte,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  ContainerPadraoWidget(
                    children: [
                      const SizedBox(height: 10),
                      CardFormasPagamento(
                        cupom: widget.cupom,
                        aoClicarPagar: widget.aoClicarPagar,
                        formasPagamento: widget.formasPagamento,
                      ),
                      const Spacer(),
                      BotoesPagamentoPageWidget(
                        cupom: widget.cupom,
                        aoClicarVoltar: widget.aoClicarVoltar,
                      ),
                      const SizedBox(height: 10)
                    ],
                  ),
                ],
              ),
            ),
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
