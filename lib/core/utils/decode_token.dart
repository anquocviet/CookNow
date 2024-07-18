import 'package:jwt_decoder/jwt_decoder.dart';

Map<String, dynamic> decodeToken(token) => JwtDecoder.decode(token);
