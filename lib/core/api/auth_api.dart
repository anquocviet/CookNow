import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class AuthApi {
  QueryOptions login(String username, String password) {
    return QueryOptions(
      document: gql(_loginQuery),
      variables: {'username': username, 'password': password},
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  QueryOptions register(Map<String, dynamic> params) {
    return QueryOptions(
      document: gql(_registerQuery),
      variables: params,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  QueryOptions validateToken(String token) {
    return QueryOptions(
      document: gql(_validateTokenQuery),
      variables: {'token': token},
      optimisticResult: String,
    );
  }

  QueryOptions checkUserNotExist(String username) {
    return QueryOptions(
      document: gql(_checkUserExistQuery),
      variables: {'username': username},
      fetchPolicy: FetchPolicy.noCache,
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

  final String _registerQuery = '''
    mutation Register(\$name: String!, \$gender: Float!, \$age: Float!, \$phone: String!, \$email: String!, \$username: String!, \$password: String!) {
    register(data: {
      name: \$name
      gender: \$gender
      age: \$age
      phone: \$phone
      email: \$email
      account: {
        username: \$username
        password: \$password
      }
    }) {
      access_token
    }
}

  ''';

  final String _validateTokenQuery = '''
    query ValidateToken(\$token: String!) {
      validateToken(token: \$token)
    }
  ''';

  final String _checkUserExistQuery = '''
    query UserExists(\$data: String!) {
    userExists(data: \$data)
  }
  ''';
}
