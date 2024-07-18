import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphqlClient {
  static final HttpLink httpLink = HttpLink(
    dotenv.env['SERVER_HOST']!,
  );

  static final AuthLink authLink = AuthLink(
    getToken: () async => 'Bearer ${dotenv.env['TOKEN']}',
  );

  static Link link = authLink.concat(httpLink);

  static final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    ),
  );
}
