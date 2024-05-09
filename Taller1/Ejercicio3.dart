import 'dart:io';

class cancion {
  String titulo;
  String autor;

  cancion(this.titulo, this.autor) {
    this.titulo = titulo;
    this.autor = autor;
  }

  void Cancion() {
    print("Cancion:$titulo");
    print("Autor:$autor");
  }

  void dameTitulo() {
    print("Cancion: $titulo");
  }

  void dameAutor() {
    print("Autor: $autor");
  }

  void estableceTitulo() {
    print("Ingresar el titulo de la cancion");
    String tituloIngresado = (stdin.readLineSync()!);
    titulo = tituloIngresado;
  }

  void estableceAutor() {
    print("Ingresar el autor de la cancion");
    String AutorIngresado = (stdin.readLineSync()!);
    autor = AutorIngresado;
  }
}

void main() {
  final cancion1 = cancion("", "");
  cancion1.estableceTitulo();
  cancion1.estableceAutor();

  cancion1.Cancion();
  cancion1.dameTitulo();
  cancion1.estableceAutor();
}
