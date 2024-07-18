import 'package:graphql_flutter/graphql_flutter.dart';

class UserApi {
  QueryOptions getUser(String id) {
    return QueryOptions(
      document: gql(_findUserQuery),
      variables: {'id': id},
    );
  }

  // Define queries here
  final String _findUserQuery = '''
    query User(\$id: String!) {
      user(id: \$id) {
        id
        name
        gender
        age
        living
        bio
        email
        phone
        avatar
        date_created
        date_closed
        following
        follower
        blocks
      }
    }
  ''';
}
