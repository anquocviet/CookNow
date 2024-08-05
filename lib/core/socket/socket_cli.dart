import 'dart:async';
import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'socket_cli.g.dart';

class SocketService {
  IO.Socket socket = IO.io(
      'http://localhost:3000',
      IO.OptionBuilder()
          .setTransports(['websocket']) // for Flutter or Dart VM
          .disableAutoConnect() // disable auto-connection
          .build());

  initConnection() {
    socket.connect();
    socket.onerror((_) {
      log('Error Is ${_.toString()}');
    });
  }
}

@riverpod
Stream<StreamProvider<void>> socket(SocketRef ref) async* {
  StreamController stream = StreamController();

  SocketService().socket.onerror((err) => log(err));
  SocketService().socket.onDisconnect((_) => log('disconnect'));

  SocketService().socket.onerror((_) {
    log("Error IS ${_.toString()}");
  });

  ref.onDispose(() {
    stream.close();
    SocketService().socket.dispose();
  });

  await for (final value in stream.stream) {
    log('stream value => ${value.toString()}');
    yield value;
  }
}
