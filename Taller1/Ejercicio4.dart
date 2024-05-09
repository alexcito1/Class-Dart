import 'persona.dart';
import 'fecha.dart';

class Libro {
  String titulo;
  Persona autor;
  String isbn;
  int paginas;
  int edicion;
  String editorial;
  String lugar;
  Fecha fechaEdicion;

  Libro(this.titulo, this.autor, this.isbn, this.paginas, this.edicion,
      this.editorial, this.lugar, this.fechaEdicion);

  void mostrarInformacion() {
    print('Título: $titulo');
    print('Autor: ${autor.nombreCompleto()}');
    print('ISBN: $isbn');
    print('Páginas: $paginas');
    print('Edición: $edicion');
    print('Editorial: $editorial');
    print('Lugar: $lugar');
    print('Fecha de edición: ${fechaEdicion.mostrarFecha()}');
  }
}

void main() {
  Persona autor = Persona('Jose', 'Alexander');

  Fecha fechaEdicion = Fecha(2024, 4, 8);

  Libro libro = Libro(
    'Luna de pluton',
    autor,
    '999-9-99-999999-9',
    500,
    1,
    'Mi Casa',
    'Pereira, Colombia',
    fechaEdicion,
  );

  libro.mostrarInformacion();
}
