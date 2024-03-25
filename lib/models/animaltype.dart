import 'dart:convert';

class AnimalModel {
  AnimalModel({
    required this.type,
    required this.image,

  });

  String type;
  String image;

  // Adjusted to accept Map<String, dynamic>
  factory AnimalModel.fromJson(Map<String, dynamic> json) => AnimalModel(
    type: json["type"], image: json["image"],
  );

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
    "type": type,
    "image": image,
  };

}
