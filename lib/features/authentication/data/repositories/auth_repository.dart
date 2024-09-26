import 'package:cooknow/features/authentication/data/dtos/device_dto.dart';
import 'package:cooknow/features/authentication/data/dtos/register_dto.dart';

abstract class AuthRepository {
  Future<String> login(String email, String password, DeviceDto deviceDto);
  Future<void> register(RegisterDto registerDto);
  Future<void> validateToken(String token);
  Future<void> checkUserNotExist(String data);
  Future<bool> logout(String token);
}
