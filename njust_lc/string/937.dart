List<String> reorderLogFiles(List<String> logs) {
  List<String> numberList = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];
  List<String> numberLog = [];
  for (int i = 0; i < logs.length; i++) {
    if (numberList.contains(logs[i].split(' ')[1])) {
      numberLog.add(logs[i]);
      logs.remove(logs[i]);
    }
  }

  logs.sort((a, b) {
    if (a.substring(a.split(' ')[0].length) !=
        a.substring(a.split(' ')[0].length)) {
      return (a.split(' ')[0]).compareTo(b.split(' ')[0]);
    } else {
      print(a.substring(a.split(' ')[0].length));
      print(b.substring(b.split(' ')[0].length));
      return (a.substring(a.split(' ')[0].length))
          .compareTo(a.substring(a.split(' ')[0].length));
    }
  });
  logs.addAll(numberLog);
  print(logs);
  return logs;
}

void main() {
  reorderLogFiles(
      ["a1 9 2 3 1", "g1 act car", "zo4 4 7", "ab1 off key dog", "a8 act zoo"]);
}
