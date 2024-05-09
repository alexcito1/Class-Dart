import 'dart:io';

class cuentaBancaria {
  String numeroCuenta;
  String numeroDocumento;
  double saldo;
  double interesAnual;

  cuentaBancaria(
      this.numeroCuenta, this.numeroDocumento, this.saldo, this.interesAnual) {}

  void ingresar() {
    print("Digite el monto que desea ingresar");
    saldo += double.parse(stdin.readLineSync()!);
    print("Ingreso con exito");
    print("Su monto actual es de :$saldo");
  }

  void retirar() {
    print("Digite el monto a retirar");
    double montoARetirar = double.parse(stdin.readLineSync()!);

    if (saldo >= montoARetirar) {
      saldo -= montoARetirar;
      print("Su retiro fue de: $montoARetirar");
      print("Su saldo actual es : $saldo");
    } else {
      print("Saldo insuficiente");
    }
  }

  void imprimirCuenta() {
    print("Numero de cuenta bancaria : #$numeroCuenta");
    print("Numero de documento : #$numeroDocumento");
    print("Saldo actual de la cuenta \$$saldo");
    print("Su interes anual es de: $interesAnual%");
  }
}

void main() {
  final CuentaPersona1 = cuentaBancaria("123456789", "1006386049", 50000, 2);

  CuentaPersona1.ingresar();
  CuentaPersona1.retirar();
  CuentaPersona1.imprimirCuenta();
}
