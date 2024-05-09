  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String,int> unit={
      'a':1,
      'b':2,
      'c':3,
      'd':4,
      'e':5,
      'f':6,
      'g':7,
      'h':8,
      'i':9,
      'j':10,
      'k':11,
      'l':12,
      'm':13,
      'n':14,
      'o':15,
      'p':16,
      'q':17,
      'r':18,
      's':19,
      't':20,
      'u':21,
      'v':22,
      'w':23,
      'x':24,
      'y':25,
      'z':26,
    };
    Map <String,List<String>> strMap={};
    for(String str in strs){
      List<String> chars = str.split('');
      int plus = 0;
      int mulit = 1;
      for(int i = 0;i<chars.length;i++){
        plus +=unit[chars[i]]!;
        mulit= mulit*unit[chars[i]]!;
      }
        String key = '${plus.toString()}${mulit.toString()}';
      if(strMap.containsKey(key)){
        List<String> cur = strMap[key]??[];
        cur.add(str);
        strMap.update(key, (value) => cur);
      }else{
        strMap.addAll({
          key:[str],
        });
      }
    }
    return strMap.values.toList();
  }
  