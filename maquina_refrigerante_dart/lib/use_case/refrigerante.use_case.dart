import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante/repo/refrigrerante.repo.dart';
import 'package:maquina_refrigerante/state/checkout.state.dart';

class RefrigeranteUseCase {
  RefrigeranteRepo _repo;
  CheckoutState _state;

  RefrigeranteUseCase(this._repo, this._state);

  void obterRefrigerantesDisponiveis() {
    _state.carregando = true;
    _state.atualizar();
    adquirirRefrigerantes();
    _state.carregando = false;
    _state.atualizar();
  }

  void adquirirRefrigerantes() {
    try {
      List<Refrigerante> refrigerantes = _repo.obterRefrigerantesDisponiveis();
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
