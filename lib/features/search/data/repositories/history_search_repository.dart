import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/user/domain/user/user.dart';

abstract class HistorySearchRepository {
  Future<Map<String, List<dynamic>>> search(
      String data, double take, double skip);
  Future<List<Post>> searchPost(String data, double take, double skip);
  Future<List<User>> searchUser(String data, double take, double skip);
  Future<void> getHistorySearch(String userId);
  Future<void> addHistorySearch(String id, String data);
  Future<void> removeSearch(String userId, String idSearch);
  Future<void> clearHistorySearch();
}
