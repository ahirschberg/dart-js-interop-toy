@JS('window')
library toy;

import 'dart:js';
import 'package:js/js.dart';

// This isn't a real "class" in JavaScript, but an anonymous object.
//
// But we <3 static typing.
//
// So `@anonymous` means "type doesn't actually exist in the JS".
@JS()
@anonymous
abstract class Toy {
  @JS()
  external dynamic getData();
}

// Access the `window.toy` object exposed via `toy.js`.
//
// We get back an "interface" of [Toy].
@JS('toy')
external Toy get toy;
