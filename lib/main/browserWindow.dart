@JS()
library electron.browser_window;

import "package:js/js.dart";

@JS("electron.BrowserWindow")
class BrowserWindow {
  BrowserWindow({width = 800, height = 600});
  external void on(String evnet, Function callback);
  external void loadURL(String url);
}
