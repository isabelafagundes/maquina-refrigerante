import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante/domain/tipo_embalagem.dart';
import 'package:maquina_refrigerante/repo/refrigrerante.repo.dart';

class RefrigerantesRepoImpl implements RefrigeranteRepo{
  @override
  List<Refrigerante> obterRefrigerantesDisponiveis() {
    List<Refrigerante> listaRefrigerantes = [];
    listaRefrigerantes.add(Refrigerante.carregar("Coca Lata", 3.50, TipoEmbalagem.lata,));
    listaRefrigerantes.add(Refrigerante.carregar("Soda Lata", 3.50, TipoEmbalagem.lata));
    listaRefrigerantes.add(Refrigerante.carregar("Guaraná Lata", 3.50, TipoEmbalagem.lata));
    listaRefrigerantes.add(Refrigerante.carregar("Coca 600ml", 7.00, TipoEmbalagem.garrafa));
    listaRefrigerantes.add(Refrigerante.carregar("Soda 600ml", 7.00, TipoEmbalagem.garrafa));
    listaRefrigerantes.add(Refrigerante.carregar("Guaraná 600ml", 7.00, TipoEmbalagem.garrafa));

    return listaRefrigerantes;
  }

}