@JS()
library electron;

export "main/app.dart";
export "main/browserWindow.dart";

import "package:js/js.dart";
import "main/app.dart";
import "main/browserWindow.dart";

@JS("electron.app")
external App get app;
@JS("electron.BrowserWindow")
external BrowserWindow get browserWindow;

@JS("process")
external dynamic get process;
