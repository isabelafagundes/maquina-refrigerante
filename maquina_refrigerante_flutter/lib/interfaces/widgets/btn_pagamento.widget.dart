import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';

class BtnPagamentoWidget extends StatelessWidget {
  const BtnPagamentoWidget({Key? key, required this.aoClicarPagamento}) : super(key: key);
  final Function() aoClicarPagamento;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: ElevatedButton(
          onPressed: aoClicarPagamento,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: kPaddingPadrao * 5, horizontal: kPaddingPadrao * 5),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Pagamento", style: TextStyle(fontSize: 18, color: kCorFonte)),
              SizedBox(width: 30),
              Icon(Icons.chevron_right, color: kCorFonte),
            ],
          )),
    );
  }
}
