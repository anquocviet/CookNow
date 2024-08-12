import 'package:graphql_flutter/graphql_flutter.dart';

class CommentApi {
  QueryOptions fetchCommentOfPost(String postId) {
    return QueryOptions(
      document: gql(_fetchCommentOfPostQuery),
      variables: {'postId': postId},
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  final _fetchCommentOfPostQuery = '''
    query GetCommentsByPostId(\$postId: String!) {
      getCommentsByPostId(postId: \$postId) {
        id
        user_id
        username
        name
        avatar
        post_id
        content
        image
        date_time_comment
      }
    }
  ''';
}
