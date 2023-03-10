import 'package:maquina_refrigerante/use_case/exceptions/erro_customizado.dart';

class CupomNaoInicializado implements ErroCustomizado {
  @override
  String toString() {
    return "Cupom não inicializado!";
  }
}