import 'toy_facade.dart';

main() {
  // When compiled to JS, this ~roughly means `log(window.toy.getData())` :)
  // I've also filed https://github.com/dart-lang/sdk/issues/28194 for you.
  var properties = jsToMap(toy.getData());
  print(properties);
}
