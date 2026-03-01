class ContactMessageModel {
  final int id;
  final int? userId;
  final String name;
  final String email;
  final String subject;
  final String message;
  final String status;
  final String? adminReply;
  final bool replyRead;

  ContactMessageModel({
    required this.id,
    this.userId,
    required this.name,
    required this.email,
    required this.subject,
    required this.message,
    required this.status,
    this.adminReply,
    required this.replyRead,
  });

  factory ContactMessageModel.fromJson(Map<String, dynamic> json) {
    return ContactMessageModel(
      id: json['id'],
      userId: json['user_id'],
      name: json['name'],
      email: json['email'],
      subject: json['subject'],
      message: json['message'],
      status: json['status'],
      adminReply: json['admin_reply'],
      replyRead: json['reply_read'] == 1 || json['reply_read'] == true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'name': name,
      'email': email,
      'subject': subject,
      'message': message,
      'status': status,
      'admin_reply': adminReply,
      'reply_read': replyRead,
    };
  }
}
