import 'package:graphql_flutter/graphql_flutter.dart';

class AuthApi {
  QueryOptions login(String username, String password) {
    return QueryOptions(
      document: gql(_loginQuery),
      variables: {'username': username, 'password': password},
    );
  }

  QueryOptions validateToken(String token) {
    return QueryOptions(
      document: gql(_validateTokenQuery),
      variables: {'token': token},
      optimisticResult: String,
    );
  }

  // Define queries here
  final String _loginQuery = '''
    query Login(\$username: String!, \$password: String!) {
      login(data: { username: \$username, password: \$password }) {
        access_token
      }
    }
  ''';

  final String _validateTokenQuery = '''
    query ValidateToken(\$token: String!) {
      validateToken(token: \$token)
    }
  ''';
}
