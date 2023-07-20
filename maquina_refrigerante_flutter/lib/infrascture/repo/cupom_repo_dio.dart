import 'dart:html';

import 'package:dio/dio.dart';
import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante/repo/cupom.repo.dart';
import 'package:maquina_refrigerante/use_case/exceptions/cupom_nao_inicializado.exception.dart';
import 'package:maquina_refrigerante_flutter/environments.dart';
import 'package:maquina_refrigerante_flutter/infrascture/service/api.service.dart';

class CupomRepoDio extends ApiService implements CupomRepo {
  @override
  String path = "";

  @override
  Future<void> salvar(Cupom cupom) async {
    http.post("${Environment.api}/", corpo: cupom).catchError(
      (erro) {
        if (erro is! DioError || erro.response == null) throw erro;
        if (erro.response!.statusCode == HttpStatus.notFound) throw CupomNaoInicializado();
        throw erro;
      },
    );
  }
}
