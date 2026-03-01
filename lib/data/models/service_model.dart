class ServiceModel {
  final int id;
  final String title;
  final String description;
  final String? icon;
  final double? price;

  ServiceModel({
    required this.id,
    required this.title,
    required this.description,
    this.icon,
    this.price,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      icon: json['icon'],
      price: json['price'] != null
          ? double.parse(json['price'].toString())
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'icon': icon,
      'price': price,
    };
  }
}
