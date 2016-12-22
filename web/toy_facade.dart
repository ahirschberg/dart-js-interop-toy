@JS()
library toy;

import "package:js/js.dart";

@JS("toy")
abstract class Toy {
    external static dynamic getData();
}
