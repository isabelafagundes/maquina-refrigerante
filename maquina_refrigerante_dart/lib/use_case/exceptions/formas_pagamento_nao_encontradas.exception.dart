import 'package:maquina_refrigerante/use_case/exceptions/erro_customizado.dart';

class FormasPagamentoNaoEncontradasException implements ErroCustomizado {
  @override
  String toString() {
    return "Não foi possível encontrar as formas de pagamento!!";
  }
}