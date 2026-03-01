class AppointmentModel {
  final int id;
  final int? userId;
  final String name;
  final String email;
  final String phone;
  final String date;
  final String time;
  final String service;
  final String? notes;
  final String status;

  AppointmentModel({
    required this.id,
    this.userId,
    required this.name,
    required this.email,
    required this.phone,
    required this.date,
    required this.time,
    required this.service,
    this.notes,
    required this.status,
  });

  factory AppointmentModel.fromJson(Map<String, dynamic> json) {
    return AppointmentModel(
      id: json['id'],
      userId: json['user_id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'] ?? '',
      date: json['date'],
      time: json['time'],
      service: json['service'],
      notes: json['notes'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'name': name,
      'email': email,
      'phone': phone,
      'date': date,
      'time': time,
      'service': service,
      'notes': notes,
      'status': status,
    };
  }
}
