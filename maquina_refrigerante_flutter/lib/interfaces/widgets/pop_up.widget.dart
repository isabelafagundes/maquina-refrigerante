import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/interfaces/pages/home.page.dart';

class PopUpWidget extends StatelessWidget {
  const PopUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kBorderRadiusPadrao)),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Container(
              width: 260,
              height: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadiusPadrao * 5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(kImageRetirar),
                  const Spacer(),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Retire suas bebidas!',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: kCorFonte),
                      ),
                      Text(
                        'Confira se todas as suas bebidas estão liberadas, e não esqueça de pegar o troco.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: kCorFonte),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: kMarginPadrao),
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                backgroundColor: const Color(0xFFFFFBFE),
                padding: const EdgeInsets.symmetric(vertical: kPaddingPadrao * 5, horizontal: kPaddingPadrao * 7),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text(
                'Ok',
                style: TextStyle(color: kCorPopUp, fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
