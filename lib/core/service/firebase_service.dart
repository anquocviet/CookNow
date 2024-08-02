import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_service.g.dart';

class FirebaseService {
  FirebaseService({required this.storageRef});

  final Reference storageRef;

  Future<String> uploadFile(XFile xFile) async {
    File file = File(xFile.path);
    final fileName = xFile.name.replaceAll('image_picker_', '');
    final fileRef = storageRef.child('images/$fileName');
    try {
      await fileRef.putFile(file);
      final url = await fileRef.getDownloadURL();
      return url;
    } on FirebaseException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}

@Riverpod(keepAlive: true)
FirebaseService firebaseService(FirebaseServiceRef ref) {
  return FirebaseService(storageRef: FirebaseStorage.instance.ref());
}
