class Empleado {
  int cedula;
  String nombre;
  double salario;
  bool estado;

  Empleado(this.cedula, this.nombre, this.salario, this.estado);

  void Trabajando() {
    estado = true;
  }

  void NoTrabajando() {
    estado = false;
  }
}

class Programador extends Empleado {
  String lenguaje;
  String proyecto;

  Programador(int N, String nombre, double salario, bool estado, this.lenguaje,
      this.proyecto)
      : super(N, nombre, salario, estado);

  void programador() {
    if (estado == true) {
      print("$nombre se encuentra en la oficina.");
      print("Está trabajando el proyecto $proyecto con el lenguaje $lenguaje");
    } else {
      print("$nombre no se encuentra en la oficina");
      print("Está trabajando el proyecto $proyecto con el lenguaje $lenguaje");
    }
  }
}

void main() {
  Programador ingeniero1 =
      Programador(1, "Yefry", 5000.0, false, "Java", "MenuAdso");
  Programador ingeniero2 =
      Programador(2, "Alexander", 1000000, true, "Dart", "Talleres Dart");

  ingeniero1.Trabajando();
  ingeniero1.programador();

  ingeniero2.NoTrabajando();
  ingeniero2.programador();
}
