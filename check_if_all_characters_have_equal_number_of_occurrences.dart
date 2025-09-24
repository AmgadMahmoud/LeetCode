class Solution {
  bool areOccurrencesEqual(String s) {
    final Map<String, int> charactersCounts = {};
    for (int i = 0; i < s.length; i++) {
      String character = s[i];
      charactersCounts[character] = (charactersCounts[character] ?? 0) + 1;
    }
    int firstCharacterOccurences = charactersCounts[s[0]]!;
    for (int count in charactersCounts.values) {
      if (count != firstCharacterOccurences) return false;
    }
    return true;
  }
}
