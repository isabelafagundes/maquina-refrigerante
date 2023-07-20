import 'package:get_it/get_it.dart';
import 'package:maquina_refrigerante_flutter/infrascture/service/http.service.dart';

class ApiService {

  final HttpService http = GetIt.I.get<HttpService>();
  late String path;
}
