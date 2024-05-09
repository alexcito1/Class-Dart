class Precio {
  double valor;

  Precio(this.valor);
}

class Factura extends Precio {
  String emisor;
  String cliente;

  Factura(double valor, this.emisor, this.cliente) : super(valor);

  void imprimirFactura() {
    print("----------------------");
    print("      Factura         ");
    print("Emisor: $emisor");
    print("Cliente: $cliente");
    print("Precio: \$$valor");
    print("----------------------");
  }
}

void main() {
  Factura factura = Factura(500, "SENA Pereira", "Yefry Marin");

  factura.imprimirFactura();
}
