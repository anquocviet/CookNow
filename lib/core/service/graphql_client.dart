import 'package:cooknow/core/utils/store_local_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphqlClient {
  static final _storeLocalData = StoreLocalData();

  static final HttpLink _httpLink = HttpLink(
    dotenv.env['SERVER_HOST']!,
  );

  static final AuthLink authLink = AuthLink(getToken: () async {
    final token = await _storeLocalData.getData('token') ?? '';
    return 'Bearer $token';
  });

  static Link link = authLink.concat(_httpLink);

  static final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    ),
  );
}
