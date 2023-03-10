import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';

class BtnLimparWidget extends StatelessWidget {
  const BtnLimparWidget({Key? key, required this.aoClicarLimpar}) : super(key: key);
  final Function() aoClicarLimpar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: ElevatedButton(
        onPressed: aoClicarLimpar,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kBorderRadiusPadrao + 10)),
          padding: const EdgeInsets.symmetric(vertical: kPaddingPadrao * 5, horizontal: kPaddingPadrao * 5),
        ),
        child: Row(
          children: [
            Image.asset("assets/image/lixeira_icon.png"),
            const Spacer(),
            const Text(
              "Limpar",
              style: TextStyle(color: kCorFonte, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
