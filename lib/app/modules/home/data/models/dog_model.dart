import 'dart:convert';

import '../../domain/entities/dog.dart';

class DogModel extends Dog {
  DogModel({required super.photoUrl});

  Map<String, dynamic> toMap() {
    return {
      'message': photoUrl,
      'status': 'success',
    };
  }

  static DogModel fromMap(Map<String, dynamic> map) {
    return DogModel(
      photoUrl: map['message'],
    );
  }

  String toJson() => json.encode(toMap());
  static DogModel fromJson(String source) => fromMap(json.decode(source));
}
