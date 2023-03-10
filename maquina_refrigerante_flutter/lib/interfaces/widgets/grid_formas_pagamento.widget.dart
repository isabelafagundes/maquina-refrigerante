import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/utils/calcular_quantidade_por_linha.utils.dart';

class GridFormasPagamentoWidget extends StatelessWidget {
  const GridFormasPagamentoWidget({Key? key, required this.quantidade, required this.builder}) : super(key: key);
  final int quantidade;
  final IndexedWidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kMarginPadrao / 2),
      child: SizedBox(
        height: 250,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: CalcularQuantidadePorLinhaUtils.calcularQuantidadeDeCardsPorLinha(context),
            mainAxisSpacing: kMarginPadrao,
            crossAxisSpacing: kMarginPadrao / 2,
            mainAxisExtent: 70,
          ),
          itemCount: quantidade,
          itemBuilder: (context, i) => builder(context, i),
        ),
      ),
    );
  }
}
