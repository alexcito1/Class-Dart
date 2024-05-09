class Persona {
  String nombre;
  String apellido;

  // Constructor de la clase Persona
  Persona(this.nombre, this.apellido);

  // Método para obtener el nombre completo
  String nombreCompleto() {
    return '$nombre $apellido';
  }
}
