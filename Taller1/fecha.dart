class Fecha {
  int year;
  int month;
  int day;

  // Constructor de la clase Fecha
  Fecha(this.year, this.month, this.day);

  // Método para mostrar la fecha en un formato específico
  String mostrarFecha() {
    return '$day/$month/$year';
  }
}
