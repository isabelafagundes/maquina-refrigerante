import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante/repo/cupom.repo.dart';

class CupomRepoImpl implements CupomRepo{

  List<Cupom> cuponsSalvos = [];
  @override
  Future<void> salvar(Cupom cupom) async {
    cuponsSalvos.add(cupom);
  }

}