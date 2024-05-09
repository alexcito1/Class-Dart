import 'dart:io';

class Empleado {
  int cedula;
  String nombre;
  double pagoDiario;

  Empleado(this.cedula, this.nombre, this.pagoDiario);

  void pagoHorasExtra() {
    int valorHora = 10000;
    print("Digite por favor las horas trabajadas");
    int horasTrabajadas = int.parse(stdin.readLineSync()!);
    if (horasTrabajadas > 8) {
      int horasExtra = horasTrabajadas - 8;
      int minutos = horasExtra * 60;
      int horasExtrasAPagar = horasExtra * valorHora;
      pagoDiario += horasExtrasAPagar;

      print(
          "Se deben pagar horas extra. Fueron $minutos minutos y su valor es de : $horasExtrasAPagar");
      print("$nombre con cedula $cedula su pago sera de $pagoDiario");
    } else {
      print("No se deben pagar horas extra");
      print("$nombre con cedula $cedula su pago sera de $pagoDiario");
    }
  }
}

void main() {
  Empleado Empleado1 = Empleado(1006386049, "Yefry", 100000);

  Empleado1.pagoHorasExtra();
}
