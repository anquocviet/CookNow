import 'package:cooknow/features/posts/data/dtos/create_post_dto.dart';

class UpdatePostDto {
  UpdatePostDto({
    required this.id,
    required this.name,
    required this.image,
    required this.nopEat,
    required this.category,
    required this.prepareTime,
    required this.ownerId,
    required this.ingredients,
    required this.steps,
  });

  final String id;
  final String name;
  final String image;
  final int nopEat;
  final String category;
  final String prepareTime;
  final String ownerId;
  final List<String> ingredients;
  final List<CreateStep> steps;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'nop_eat': nopEat,
      'category': category,
      'prepare_time': prepareTime,
      'owner_id': ownerId,
      'ingredients': ingredients,
      'steps': steps.map((x) => x.toJson()).toList(),
    };
  }

  factory UpdatePostDto.fromJson(Map<String, dynamic> map) {
    return UpdatePostDto(
      id: map['id'],
      name: map['name'],
      image: map['image'],
      nopEat: map['nop_eat'],
      category: map['category'],
      prepareTime: map['prepare_time'],
      ownerId: map['owner_id'],
      ingredients: List<String>.from(map['ingredients']),
      steps: List<CreateStep>.from(
          map['steps']?.map((x) => CreateStep.fromJson(x))),
    );
  }

  UpdatePostDto copyWith({
    String? id,
    String? name,
    String? image,
    int? nopEat,
    String? category,
    String? prepareTime,
    String? ownerId,
    List<String>? ingredients,
    List<CreateStep>? steps,
  }) {
    return UpdatePostDto(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      nopEat: nopEat ?? this.nopEat,
      category: category ?? this.category,
      prepareTime: prepareTime ?? this.prepareTime,
      ownerId: ownerId ?? this.ownerId,
      ingredients: ingredients ?? this.ingredients,
      steps: steps ?? this.steps,
    );
  }
}
