@JS()
library electron.app;

import "package:js/js.dart";

@JS("electron.app")
class App {
  external String getAppPath();
  external void on(String evnet, Function callback);
  external void quit();
}
