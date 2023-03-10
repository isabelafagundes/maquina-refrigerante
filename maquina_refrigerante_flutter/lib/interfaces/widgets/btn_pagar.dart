import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/pop_up.widget.dart';

class BtnPagarWidget extends StatelessWidget {
  const BtnPagarWidget({Key? key, required this.total, required this.valorTotal, required this.valorPagoTotal})
      : super(key: key);
  final String total;
  final double valorTotal;
  final double valorPagoTotal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: ElevatedButton(
        onPressed: () {
          if (valorPagoTotal < valorTotal) {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Por favor, finalize o pagamento!")));
          } else {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const PopUpWidget();
                });
          }
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: kCorPreco,
          padding: const EdgeInsets.symmetric(vertical: kPaddingPadrao * 5, horizontal: kPaddingPadrao * 5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Pagar", style: TextStyle(fontSize: 18, color: kCorFonte)),
            const SizedBox(width: 30),
            Text(total, style: const TextStyle(fontSize: 18, color: kCorFonte))
          ],
        ),
      ),
    );
  }
}
