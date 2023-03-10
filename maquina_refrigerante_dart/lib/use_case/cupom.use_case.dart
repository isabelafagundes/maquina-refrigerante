import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante/repo/cupom.repo.dart';
import 'package:maquina_refrigerante/state/checkout.state.dart';
import 'package:maquina_refrigerante/use_case/exceptions/cupom_nao_inicializado.exception.dart';
import 'package:maquina_refrigerante/use_case/exceptions/erro_customizado.dart';

class CupomUseCase {
  CupomRepo _repo;
  CheckoutState _state;

  CupomUseCase(this._repo, this._state);

  void registrar(Refrigerante refrigerante) {
    _state.carregando = true;
    _state.atualizar();
    inserir(refrigerante);
    _state.atualizar();
    _state.carregando = false;
  }

  void inserir(Refrigerante refrigerante) {
    try {
      verificarExistencia();
      _state.cupom.registrar(refrigerante);
    } on ErroCustomizado catch (erro) {
      _state.erro = true;
      _state.mensagemErro = erro.toString();
    } catch (erro) {
      adicionarErro("Não foi possível registrar o refrigerante!");
    }
  }

  void pagar(FormaPagamento formaPagamento) {
    _state.carregando = true;
    _state.atualizar();
    realizarPagamento(formaPagamento);
    _state.carregando = false;
    _state.atualizar();
  }

  void realizarPagamento(FormaPagamento formaPagamento) {
    try {
      verificarExistencia();
      _state.cupom.pagar(formaPagamento);
    } on ErroCustomizado catch (erro) {
      adicionarErro(erro.toString());
    } catch (erro) {
      adicionarErro("Não foi possível realizar pagamento!");
    }
  }

  void limpar() {
    _state.carregando = true;
    _state.atualizar();
    limparCupom();
    _state.carregando = false;
    _state.atualizar();
  }

  void limparCupom() {
    try {
      _state.cupom.limparCupom();
    } catch (erro) {
      adicionarErro("Não foi possível limpar a lista!");
    }
  }

  void finalizar() {
    _state.carregando = true;
    _state.atualizar();
    salvarCupom();
    _state.carregando = false;
    _state.atualizar();
  }

  void salvarCupom() {
    try {
      Cupom cupom = _state.cupom;
      _repo.salvar(cupom);
    } catch (erro) {
      adicionarErro("Não foi possível salvar o cupom");
    }
  }

  void inicializarCupom(int numeroCupom) {
    _state.carregando = true;
    _state.atualizar();
    inicializar(numeroCupom);
    _state.carregando = false;
    _state.atualizar();
  }

  void inicializar(int numeroCupom) {
    try {
      _state.cupom = Cupom.criar(numeroCupom);
    } catch (erro) {
      adicionarErro("Não foi possível inicializar o cupom");
    }
  }

  void verificarExistencia() {
    if (_state.cupom == null) throw CupomNaoInicializado();
  }

  void adicionarErro(String mensagemErro) {
    _state.erro = true;
    _state.mensagemErro = mensagemErro;
  }
}
