import 'package:path/path.dart';

String testablePath(String path) {
  return join(isDebug() ? '../' : '', path);
}

bool isDebug() {
  var debug = false;
  assert(() {
    debug = true;
    return true;
  }());
  return debug;
}
