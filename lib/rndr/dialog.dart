@JS()
library electron.dialog;

import "package:js/js.dart";

class DialogOpts {
  String type;
  List<String> buttons;
  String title;
  String message;
  String detail;
  DialogOpts({this.type, this.buttons, this.title, this.message, this.detail});
}

@JS("electron.remote.dialog.showMessageBox")
external void showMessageBox(dynamic win, DialogOpts options);
