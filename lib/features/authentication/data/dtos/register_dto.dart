class RegisterDto {
  RegisterDto({
    this.name = '',
    this.gender = 1,
    this.age = 16,
    this.phone = '',
    this.email = '',
    this.username = '',
    this.password = '',
  });

  String name;
  int gender;
  int age;
  String phone;
  String email;
  String username;
  String password;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'gender': gender,
      'age': age,
      'phone': phone,
      'email': email,
      'username': username,
      'password': password,
    };
  }

  factory RegisterDto.fromJson(Map<String, dynamic> json) {
    return RegisterDto(
      name: json['name'],
      gender: json['gender'],
      age: json['age'],
      phone: json['phone'],
      email: json['email'],
      username: json['username'],
      password: json['password'],
    );
  }
}
