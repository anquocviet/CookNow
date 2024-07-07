import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphqlClient {
  static final HttpLink httpLink = HttpLink(
    dotenv.env['SERVER_HOST'] ?? 'http://localhost:3000/graphql',
  );

  static final AuthLink authLink = AuthLink(
    // getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    getToken: () async => '',
  );

  static Link link = authLink.concat(httpLink);

  static final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    ),
  );
}
