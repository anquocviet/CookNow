import 'package:graphql_flutter/graphql_flutter.dart';

class AuthApi {
  QueryOptions login(String username, String password) {
    return QueryOptions(
      document: gql(loginQuery),
      variables: {'username': username, 'password': password},
    );
  }

  // Define queries here
  final String loginQuery = '''
    query Login {
      login(data: { username: \$username, password: \$password }) {
        access_token
      }
    }
  ''';
}
