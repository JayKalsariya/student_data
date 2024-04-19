import 'dart:io';

class Student {
  final String name;
  final String grid;
  final String standard;
  final File? image;

  Student({
    required this.name,
    required this.grid,
    required this.standard,
    this.image,
  });

  factory Student.fromMap(Map<String, dynamic> data) {
    return Student(
      name: data['name'],
      grid: data['grid'],
      standard: data['standard'],
      image: File(data['image']),
    );
  }

  Map<String, dynamic> get toMap => {
        'name': name,
        'grid': grid,
        'standard': standard,
        'image': image?.path,
      };

  List StudentList = [];
}
