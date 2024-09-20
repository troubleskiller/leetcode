String reverseWords(String s) {
  return s.split(' ').map((e) => e.split('').reversed.join()).join(' ');
}

main() {
  print(reverseWords('sad ssc cse'));
}
