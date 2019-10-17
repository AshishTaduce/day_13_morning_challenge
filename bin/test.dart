import "package:test/test.dart";
import 'main.dart';

void main(){
  group("Morning 13", () {
    test("Short Lenghting string", () {
      expect(lengthen("ingenius", "forest"), equals("fordstfo"));
    });
    test("Find broken keys", () {
      expect(findBrokenKeys("beethoven", "affthoif5"), equals(["b", "p", "v", "n"]));
    });
  });
}