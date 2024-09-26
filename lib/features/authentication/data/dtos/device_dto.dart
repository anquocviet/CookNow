class DeviceDto {
  DeviceDto({
    required this.id,
    required this.device,
    required this.model,
    required this.product,
    required this.version,
    required this.fcmToken,
  });

  final String id;
  final String device;
  final String model;
  final String product;
  final String version;
  final String? fcmToken;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'device': device,
      'model': model,
      'product': product,
      'version': version,
      'fcm_token': fcmToken,
    };
  }

  factory DeviceDto.fromJson(Map<String, dynamic> json) {
    return DeviceDto(
      id: json['id'],
      device: json['device'],
      model: json['model'],
      product: json['product'],
      version: json['version'],
      fcmToken: json['fcm_token'],
    );
  }
}
