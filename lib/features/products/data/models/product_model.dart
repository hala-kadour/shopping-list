class ProductModel {
  final int? id;
  final String name;
  final String quantity;

  ProductModel({this.id, required this.name, required this.quantity});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'quantity': quantity};
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      name: map['name'],
      quantity: map['quantity'],
    );
  }

  ProductModel copyWith({int? id, String? name, String? quantity}) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
    );
  }
}
