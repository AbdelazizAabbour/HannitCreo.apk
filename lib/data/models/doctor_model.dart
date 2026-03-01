class DoctorModel {
  final int id;
  final String name;
  final String specialty;
  final String description;
  final String? photo;

  DoctorModel({
    required this.id,
    required this.name,
    required this.specialty,
    required this.description,
    this.photo,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id'],
      name: json['name'],
      specialty: json['specialty'],
      description: json['description'],
      photo: json['photo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'specialty': specialty,
      'description': description,
      'photo': photo,
    };
  }
}
