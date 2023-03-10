import 'package:flutter/material.dart';
import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/btn_refrigerante.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/grid_cardapio.widget.dart';
import 'package:maquina_refrigerante_flutter/utils/obter_imagem.utils.dart';

class GridCardapioWidget extends StatelessWidget {
  const GridCardapioWidget(
      {Key? key, required this.refrigerantes, required this.cupom, required this.aoSelecionarRefrigerante})
      : super(key: key);
  final List<Refrigerante> refrigerantes;
  final Cupom cupom;
  final Function(Refrigerante) aoSelecionarRefrigerante;

  @override
  Widget build(BuildContext context) {
    return CardCardapioWidget(
      quantidade: refrigerantes.length,
      builder: (context, i) => BtnRefrigerantesWidget(
        nome: refrigerantes[i].descricao,
        embalagem: refrigerantes[i].tipo,
        urlImagem: ObterImagemUtil.obterImagem(i, refrigerantes),
        preco: refrigerantes[i].valorUnitario,
        quantidade: cupom.obterQuantidade(refrigerantes[i].descricao),
        onTap: () {
          aoSelecionarRefrigerante(refrigerantes[i]);
        },
      ),
    );
  }
}
