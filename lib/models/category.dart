import 'dart:convert';

class CategoryModel {
  CategoryModel({
    required this.type,
  });

  String type;

  // Adjusted to accept Map<String, dynamic>
  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    type: json["type"],
  );

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
    "type": type,
  };
}
