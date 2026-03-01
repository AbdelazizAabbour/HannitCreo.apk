class UserModel {
  final int id;
  final String name;
  final String email;
  final String? phone;
  final bool isAdmin;
  final String? googleId;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.phone,
    required this.isAdmin,
    this.googleId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      isAdmin: json['is_admin'] == 1 || json['is_admin'] == true,
      googleId: json['google_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'is_admin': isAdmin,
      'google_id': googleId,
    };
  }
}
