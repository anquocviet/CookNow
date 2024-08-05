import 'package:cooknow/features/user/data/dtos/update_user_dto.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class UserApi {
  QueryOptions getUser(String id) {
    return QueryOptions(
      document: gql(_findUserQuery),
      variables: {'id': id},
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  MutationOptions updateUser(UpdateUserDto dto) {
    return MutationOptions(
      document: gql(_updateUserMutation),
      variables: dto.toJson(),
      fetchPolicy: FetchPolicy.noCache,
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

  final String _updateUserMutation = '''
    mutation UpdateUser(\$id: String!, \$name: String!, \$age: Float!, \$gender: Float!, \$living: String!, \$bio: String!, \$email: String!, \$phone: String!, \$avatar: String!) {
      updateUser(
        data: {
          id: \$id
          name: \$name
          age: \$age
          gender: \$gender
          living: \$living
          bio: \$bio
          email: \$email
          phone: \$phone
          avatar: \$avatar
        }
      ) {
          id
          name
          age
          gender
          living
          bio
          email
          phone
          avatar
      }
    }
''';
}
