@JS('window')
library toy;

import 'package:js/js.dart';
import 'package:js/js_util.dart';

/// A workaround to converting an object from JS to a Dart Map.
Map jsToMap(jsObject) {
  return new Map.fromIterable(
    _getKeysOfObject(jsObject),
    value: (key) => getProperty(jsObject, key),
  );
}

// Both of these interfaces exist to call `Object.keys` from Dart.
//
// But you don't use them directly. Just see `jsToMap`.
@JS('Object.keys')
external List<String> _getKeysOfObject(jsObject);

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
