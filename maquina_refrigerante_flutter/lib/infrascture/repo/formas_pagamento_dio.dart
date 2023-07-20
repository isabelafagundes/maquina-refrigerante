import 'dart:html';

import 'package:dio/dio.dart';
import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/repo/forma_pagamento.repo.dart';
import 'package:maquina_refrigerante_flutter/environments.dart';
import 'package:maquina_refrigerante_flutter/infrascture/dtos/forma_pagamento/forma_pagamento.dto.dart';
import 'package:maquina_refrigerante_flutter/infrascture/service/api.service.dart';
import 'package:maquina_refrigerante/use_case/exceptions/formas_pagamento_nao_encontradas.exception.dart';

class FormasPagamentoRepoDio extends ApiService implements FormaPagamentoRepo {
  @override
  String path = "";

  @override
  Future<List<FormaPagamento>> obterFormasPagamento() {
    return http
        .get("${Environment.api}/")
        .catchError(
          (erro) {
        if (erro is! DioError || erro.response == null) throw erro;
        if (erro.response!.statusCode == HttpStatus.notFound) throw FormasPagamentoNaoEncontradasException();
        throw erro;
      },
    )
        .then((response) => (response.data as List).map((json) => FormaPagamentoDto.fromJson(json)))
        .then((dtos) => dtos.map((e) => e.paraDomain()).toList());
  }
}
