import 'package:js/js_util.dart';

import 'toy_facade.dart';

main() {
  // When compiled to JS, this ~roughly means `log(window.toy.getData())` :)
  // I've also filed https://github.com/dart-lang/sdk/issues/28194 for you.
  var properties = toy.getData();

  // `getProperty` basically delegates directly to JS.
  //
  // See package:js/js_util.dart.
  print(getProperty(properties, 'arbitrary_prop'));
}
