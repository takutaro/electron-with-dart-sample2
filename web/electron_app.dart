@HtmlImport('electron_app.html')
@JS()
library electron_app;

import 'dart:html';
import "package:js/js.dart";
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:electron_with_dart2/rndr/remote.dart' as remote;
import 'package:electron_with_dart2/rndr/dialog.dart' as dialog;

@PolymerRegister('electron-app')
class ElectronApp extends PolymerElement {
  ElectronApp.created() : super.created();

  @property
  String inputvalue = '誰か';

  @reflectable
  sayHello(Event e, var detail) {
    var win = remote.getCurrentWindow();
    var opts = new dialog.DialogOpts(type: 'info', buttons: ['OK'], title: 'Hello', message: inputvalue + ' さん', detail: 'こんにちは');
    dialog.showMessageBox(win, opts);
  }
}
