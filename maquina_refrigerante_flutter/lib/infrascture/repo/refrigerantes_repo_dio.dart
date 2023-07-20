import 'dart:html';

import 'package:dio/dio.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante/repo/refrigrerante.repo.dart';
import 'package:maquina_refrigerante_flutter/environments.dart';
import 'package:maquina_refrigerante_flutter/infrascture/dtos/refrigerante/refrigerante.dto.dart';
import 'package:maquina_refrigerante_flutter/infrascture/service/api.service.dart';
import 'package:maquina_refrigerante/use_case/exceptions/refrigerantes_nao_encontrados.exception.dart';

class RefrigerantesRepoDio extends ApiService implements RefrigeranteRepo {
  @override
  String path = "";

  @override
  Future<List<Refrigerante>> obterRefrigerantesDisponiveis() async {
    return http
        .get("${Environment.api}/")
        .catchError(
          (erro) {
            if (erro is! DioError || erro.response == null) throw erro;
            if (erro.response!.statusCode == HttpStatus.notFound) throw RefrigerantesNaoEncontradosException();
            throw erro;
          },
        )
        .then((response) => (response.data as List).map((json) => RefrigeranteDto.fromJson(json)))
        .then((dtos) => dtos.map((e) => e.paraDomain()).toList());
  }
}
