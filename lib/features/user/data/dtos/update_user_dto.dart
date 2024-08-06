class UpdateUserDto {
  UpdateUserDto({
    required this.id,
    required this.name,
    required this.gender,
    required this.age,
    required this.living,
    required this.bio,
    required this.email,
    required this.phone,
    required this.avatar,
  });

  final String id;
  final String name;
  final int gender;
  final int age;
  final String living;
  final String bio;
  final String email;
  final String phone;
  final String avatar;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'gender': gender,
      'age': age,
      'living': living,
      'bio': bio,
      'email': email,
      'phone': phone,
      'avatar': avatar,
    };
  }

  factory UpdateUserDto.fromJson(Map<String, dynamic> json) {
    return UpdateUserDto(
      id: json['id'],
      name: json['name'],
      gender: json['gender'],
      age: json['age'],
      living: json['living'],
      bio: json['bio'],
      email: json['email'],
      phone: json['phone'],
      avatar: json['avatar'],
    );
  }
}
