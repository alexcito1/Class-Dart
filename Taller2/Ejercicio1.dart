import 'dart:io';

class Multimedia {
  String titulo;
  String autor;
  String formato;
  String duracion;

  Multimedia(this.titulo, this.autor, this.formato, this.duracion) {
    this.titulo = titulo;
    this.autor = autor;
    this.formato = formato;
    this.duracion = duracion;
  }

  getTitulo() {
    return titulo;
  }

  getAutor() {
    return autor;
  }

  getFormato() {
    return formato;
  }

  getDuracionMin() {
    return duracion;
  }

  void imprimirInformacion() {
    print(titulo);
    print(autor);
    print(formato);
    print(duracion);
  }

  bool equals(Multimedia comparacion) {
    if (comparacion.getTitulo() == titulo && comparacion.getAutor() == autor) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  Multimedia pelicula = Multimedia("Fury", "Brad pit", "mp4", "120");

  pelicula.imprimirInformacion();

  Multimedia pelicula2 =
      Multimedia("El hijo del diablo", "Brad pit", "mp4", "90");

  print(pelicula.equals(pelicula2).toString());
}
