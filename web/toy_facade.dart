@JS('window')
library toy;

import 'package:js/js.dart';
import 'package:js/js_util.dart';

/// A workaround to converting an object from JS to a Dart Map.
Map jsToMap(jsObject) {
  return new Map.fromIterable(
    _objectJsType.keys(jsObject),
    value: (key) => getProperty(jsObject, key),
  );
}

@JS('Object')
external _ObjectStatics get _objectJsType;

@JS()
@anonymous
abstract class _ObjectStatics {
  external List<String> keys(jsObject);
}

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
