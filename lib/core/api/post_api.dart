import 'package:graphql_flutter/graphql_flutter.dart';

class PostApi {
  QueryOptions fetchPostOfUser(String id) {
    return QueryOptions(
      document: gql(_fetchPostOfUserQuery),
      variables: {'id': id},
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  final _fetchPostOfUserQuery = '''
    query PostsByOwner(\$id: String!) {
      postsByOwner(owner_id: \$id) {
        id
        name
        image
        nop_eat
        prepare_time
        date_time_post
        delete_at
        category
        ingredients
        owner {
          user_id
          name
          avatar
        }
        steps {
          content
          medias
        }
        emojis {
          k
          v
          qty
        }
      }
    }
  ''';
}
