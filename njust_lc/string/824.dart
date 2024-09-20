String toGoatLatin(String sentence) {
  List<String> aWords = ['a', 'e', 'i', 'o', 'u'];
  List<String> latins = sentence.split(' ');
  for (int i = 0; i < latins.length; i++) {
    if (aWords.contains(latins[i][0].toLowerCase())) {
      latins[i] = '${latins[i]}ma';
    } else {
      latins[i] = '${latins[i]}${latins[i][0]}ma';
      latins[i] = latins[i].substring(1);
    }
    for (int j = 0; j < i + 1; j++) {
      latins[i] = '${latins[i]}a';
    }
  }
  String ans = latins.join(' ');
  print(ans);
  return ans;
}

void main() {
  toGoatLatin("I speak Goat Latin");
}
