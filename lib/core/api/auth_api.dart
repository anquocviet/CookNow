import 'package:graphql_flutter/graphql_flutter.dart';

class AuthApi {
  QueryOptions login(String username, String password) {
    return QueryOptions(
      document: gql(_loginQuery),
      variables: {'username': username, 'password': password},
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
}
