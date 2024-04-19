import 'dart:io';
import 'headers.dart';

class Globals {
  static String? name;
  static String? grid;
  static String? standard;
  static File? image;

  static GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Globals._();

  static final Globals globals = Globals._();

  static List<Map<String, dynamic>> StudentList = [];
  void reset() {
    name = grid = standard = image = null;
  }
}
