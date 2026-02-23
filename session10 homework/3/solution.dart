class Solution {
  List<int> countUniqueIDs(List<int> ids) {
    Map<int, int> idsCount = {};
    for (int i = 0; i < ids.length; i++) {
      idsCount[ids[i]] = (idsCount[ids[i]] ?? 0) + 1;
    }
    List<int> uniqueIDs = [];
    for (var id in idsCount.entries) {
      if (id.value == 1) {
        uniqueIDs.add(id.key);
      }
    }
    return uniqueIDs;
  }
}
