class CreateStep {
  CreateStep({required this.content, required this.medias});

  final String content;
  final List<String> medias;

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'medias': medias,
    };
  }

  factory CreateStep.fromJson(Map<String, dynamic> map) {
    return CreateStep(
      content: map['content'],
      medias: List<String>.from(map['medias']),
    );
  }

  CreateStep copyWith({
    String? content,
    List<String>? medias,
  }) {
    return CreateStep(
      content: content ?? this.content,
      medias: medias ?? this.medias,
    );
  }
}

class CreatePostDto {
  CreatePostDto({
    required this.name,
    required this.image,
    required this.nopEat,
    required this.category,
    required this.prepareTime,
    required this.ownerId,
    required this.ingredients,
    required this.steps,
  });

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

  factory CreatePostDto.fromJson(Map<String, dynamic> map) {
    return CreatePostDto(
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

  CreatePostDto copyWith({
    String? name,
    String? image,
    int? nopEat,
    String? category,
    String? prepareTime,
    String? ownerId,
    List<String>? ingredients,
    List<CreateStep>? steps,
  }) {
    return CreatePostDto(
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
