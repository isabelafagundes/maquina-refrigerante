class ConversaoParaRealUtils {
  static String conversaoParaReal(double valor) => "R\$ ${valor.toStringAsFixed
  (2).replaceAll(".", ",")}";
}
