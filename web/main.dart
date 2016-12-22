import 'toy_facade.dart';
main() {
    // this line gives the error that JsObjectImpl has no accessor [].
    // I understand why I'm getting that error, but not *how* I can access the
    // properties of a plain javascript object from dart.
    print(Toy.getData()["arbitrary_prop"]);
}
