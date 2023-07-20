import 'package:maquina_refrigerante/domain/cupom.dart';

abstract class CupomRepo {
  Future<void> salvar(Cupom cupom);
}
