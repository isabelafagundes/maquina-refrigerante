import 'package:maquina_refrigerante/use_case/exceptions/erro_customizado.dart';

class TipoInvalido implements ErroCustomizado {
  @override
  String toString() {
    return "Este tipo é inválido";
  }
}