class Environment {
  static const _API_DEV = "http://localhost:8089";
  static const _API_CLIENTE = "http://localhost:8090/";

  static get api => _API_DEV;

  static String get _urlDefault {
    const env = String.fromEnvironment("ENV", defaultValue: "prod");
    if (env == "prod") return _API_CLIENTE;
    return _API_DEV;
  }

  static get apiCentral => _urlDefault;
}
