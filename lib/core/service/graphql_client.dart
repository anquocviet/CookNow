import 'dart:io';

import 'package:cooknow/core/utils/store_local_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/io_client.dart';

class GraphqlClient {
  static final _storeLocalData = StoreLocalData();

  static final HttpLink _httpLink = HttpLink(
    dotenv.env['SERVER_HOST']!,
    httpClient: IOClient(
      HttpClient()..connectionTimeout = const Duration(seconds: 5),
    ),
  );

  static final AuthLink authLink = AuthLink(getToken: () async {
    final token = await _storeLocalData.getData('token') ?? '';
    return 'Bearer $token';
  });

  static final WebSocketLink webSocketLink = WebSocketLink(
    dotenv.env['WS_SERVER_HOST']!,
    subProtocol: GraphQLProtocol.graphqlTransportWs,
    config: SocketClientConfig(
      autoReconnect: true,
      // Embed the token in the initial payload
      initialPayload: () async {
        final token = await _storeLocalData.getData('token') ?? '';
        return {'Authorization': 'Bearer $token'};
      },
      inactivityTimeout: const Duration(seconds: 30),
      delayBetweenReconnectionAttempts: const Duration(seconds: 10),
      onConnectionLost: (code, reason) async {
        debugPrint('code $code, reason $reason');
        if (code == 4400 || code == 1005) {
          if ((code == 1005 ||
              reason ==
                  '{"server_error_msg":"4400: Connection initialization failed: Could not verify JWT: JWTExpired"}')) {
            // call API to get new access token here
          }
        }
        return Future.delayed(const Duration(seconds: 10));
      },
      pingMessage: {'count': 0},
    ),
  );

  static Link link = Link.split(
    (response) => response.isSubscription,
    webSocketLink.concat(_httpLink),
    authLink.concat(_httpLink),
  );

  static final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    ),
  );
}
