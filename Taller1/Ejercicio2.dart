import 'dart:io';

class Cafeteria {
  double capacidadMaxima;
  double cantidadActual;

  Cafeteria(this.capacidadMaxima, this.cantidadActual) {
    this.capacidadMaxima = capacidadMaxima;
    this.cantidadActual = cantidadActual;
  }

  void servirTaza() {
    int cantidadPedida = 0;
    print("Ingrese el tamaño de la taza");
    print("Taza de 25 c. c.  |1|");
    print("Taza de 50 c. c.  |2|");
    print("Taza de 100 c. c. |3|");
    int eleccion = int.parse(stdin.readLineSync()!);

    if (eleccion == 1) {
      cantidadPedida = 25;
      if (cantidadActual >= cantidadPedida) {
        print('Sirviendo una taza de café de $cantidadPedida c.c.');
        cantidadActual -=
            cantidadPedida; // Restar la cantidad pedida del barril
      } else {
        // Si no hay suficiente café en el barril
        if (cantidadActual > 0) {
          print('Sirviendo una taza de café de $cantidadActual c.c.');
          cantidadActual =
              0; // Establecer el barril en 0 si la cantidad es menor a 0
        } else {
          print('No hay café suficiente en el barril para servir.');
        }
      }
      print('Cantidad restante en el barril: $cantidadActual c.c.');
    } else if (eleccion == 2) {
      cantidadPedida = 50;
      if (cantidadActual >= cantidadPedida) {
        print('Sirviendo una taza de café de $cantidadPedida c.c.');
        cantidadActual -=
            cantidadPedida; // Restar la cantidad pedida del barril
      } else {
        // Si no hay suficiente café en el barril
        if (cantidadActual > 0) {
          print('Sirviendo una taza de café de $cantidadActual c.c.');
          cantidadActual = 0;
        } else {
          print('No hay café suficiente en el barril para servir.');
        }
      }
      print('Cantidad restante en el barril: $cantidadActual c.c.');
    } else {
      cantidadPedida = 100;
      if (cantidadActual >= cantidadPedida) {
        print('Sirviendo una taza de café de $cantidadPedida c.c.');
        cantidadActual -=
            cantidadPedida; // Restar la cantidad pedida del barril
      } else {
        if (cantidadActual > 0) {
          print('Sirviendo una taza de café de $cantidadActual c.c.');
          cantidadActual = 0;
        } else {
          print('No hay café suficiente en el barril para servir.');
        }
      }
      print('Cantidad restante en el barril: $cantidadActual c.c.');
    }
  }

  void vaciarCafetera() {
    cantidadActual = 0;
  }

  void agregarCafe() {
    print("Igrese la cantidad de cafe que desea agregar");
    int cantidadIngresar = int.parse(stdin.readLineSync()!);
    int condicionalTemporal = cantidadIngresar + cantidadIngresar;
    if (condicionalTemporal > capacidadMaxima) {
      print("La cantidad a ingresar sobre pasa los limites");
      print("La capacidad maxima es de $capacidadMaxima");
    } else {
      cantidadActual += cantidadIngresar;
      print("cantidad ingresada con exito");
      print("Cantidad actual $cantidadActual");
    }
  }
}

void main() {
  final JuanValdez = Cafeteria(1000, 99);
  JuanValdez.servirTaza();
}
