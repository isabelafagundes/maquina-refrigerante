import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante/repo/refrigrerante.repo.dart';
import 'package:maquina_refrigerante/state/checkout.state.dart';

class RefrigeranteUseCase {
  RefrigeranteRepo _repo;
  CheckoutState _state;

  RefrigeranteUseCase(this._repo, this._state);

  Future<void> obterRefrigerantesDisponiveis() async {
    _state.carregando = true;
    _state.atualizar();
    adquirirRefrigerantes();
    _state.carregando = false;
    _state.atualizar();
  }

  Future<void> adquirirRefrigerantes() async {
    try {
      List<Refrigerante> refrigerantes = await _repo.obterRefrigerantesDisponiveis();
      _state.refrigerantesDisponiveis = refrigerantes;
    } catch (erro) {
      adicionarErro("Não foi possível obter os refrigerantes!");
    }
  }

  void adicionarErro(String mensagemErro) {
    _state.erro = true;
    _state.mensagemErro = mensagemErro;
  }
}
