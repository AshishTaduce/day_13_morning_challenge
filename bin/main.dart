// Challenge 1
// Read the two problems below and write test cases for them, make sure test cases run and fail

// Challenge 2
// Repeat the Shorter String
// Write a function that repeats the shorter string until it is equal to the length of the longer string.
// Examples:
// lengthen("abcdefg", "ab") ➞ "abababa"
// lengthen("ingenius", "forest") ➞ "forestfo"
String lengthen(String word1, String word2){
  int count = 0;
  if (word1.length > word2.length){
    count = word1.length - word2.length;
    for (int i = 0; i < count; i++){
      word2 = word2 + word2[i];
    }
    return word2;
  }
  else if (word1.length < word2.length){
    count = word2.length - word1.length;
    for (int i = 0; i < count; i++){
      word1 = word1 + word1[i];
    }
    return word1;
  }
}

// Challenge 3
// Given what is supposed to be typed and what is actually typed,
// write a function that returns the broken key(s). The function looks like:
// findBrokenKeys(correct phrase, what you actually typed)
// Examples
// findBrokenKeys("happy birthday", "hawwy birthday") ➞ ["p"]
// findBrokenKeys("beethoven", "affthoif5") ➞ ["b", "e", "v", "n"]
List findBrokenKeys(String correct, String typed){
  List x = [];
  for (int i = 0 ; i< correct.length; i++){
    if (typed[i] != correct[i]){
      x.add(correct[i]);
    }
  }
  return x.toSet().toList();
}


main() {
  print(lengthen("abcdefg", "ab"));
  print(findBrokenKeys("beethoven", "affthoif5"));
}
