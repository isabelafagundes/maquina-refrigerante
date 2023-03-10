import 'package:maquina_refrigerante/domain/refrigerante.dart';

abstract class RefrigeranteRepo {
  List<Refrigerante> obterRefrigerantesDisponiveis();
}
