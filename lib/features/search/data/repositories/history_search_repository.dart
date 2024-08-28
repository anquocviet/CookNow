abstract class HistorySearchRepository {
  Future<Map<String, List<dynamic>>> search(
      String data, double take, double skip);
  Future<void> getHistorySearch(String userId);
  Future<void> addHistorySearch(String id, String data);
  Future<void> removeSearch(String userId, String idSearch);
  Future<void> clearHistorySearch();
}
