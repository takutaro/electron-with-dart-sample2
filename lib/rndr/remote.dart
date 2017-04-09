@JS()
library electron.remote;

import 'package:js/js.dart';

@JS("electron.remote.getCurrentWindow")
external dynamic getCurrentWindow();
