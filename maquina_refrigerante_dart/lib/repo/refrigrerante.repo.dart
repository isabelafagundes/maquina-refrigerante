import 'package:maquina_refrigerante/domain/refrigerante.dart';

abstract class RefrigeranteRepo {
  Future<List<Refrigerante> >obterRefrigerantesDisponiveis();
}
