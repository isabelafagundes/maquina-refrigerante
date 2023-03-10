import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante/domain/tipo_embalagem.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';


class ObterImagemUtil {
  static String obterImagem(int i, List<Refrigerante> lista) =>
      lista[i].tipo == TipoEmbalagem.lata ? kImageLata : kImageGarrafa;
}
