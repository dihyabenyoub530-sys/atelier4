
import 'dart:io';

class NombreNegatifException implements Exception {
  @override
  String toString() {
    return "Erreur : le nombre ne peut pas être négatif.";
  }
}



void main() {
  try {
    stdout.write("Entrez un nombre : ");
    int nombre = int.parse(stdin.readLineSync()!);

    if (nombre < 0) {
      throw NombreNegatifException();
    }

    int carre = nombre * nombre;
    print("Le carré de $nombre est : $carre");

  } on NombreNegatifException catch (e) {
    print(e);

  } on FormatException {
    print("Erreur : entrez un nombre valide.");

  } finally {
    print("Opération terminée.");
  }
}



