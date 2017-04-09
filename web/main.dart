import "package:electron_with_dart2/electron_main.dart" as electron;

electron.BrowserWindow mainWindow;

void onReady() {
  mainWindow = new electron.BrowserWindow(width: 800, height: 400);
  String url = 'file://' + electron.app.getAppPath() + '/index.html';
  if ((electron.process.argv as List).contains('--pubserve')) {
    url = 'http://localhost:8080';
  }
  mainWindow.loadURL(url);
  mainWindow.on('closed', () => mainWindow = null);
}

void main() {
  electron.app.on('ready', onReady);
  electron.app.on('window-all-closed', () {
    if (electron.process.platform != 'darwin') {
      electron.app.quit();
    }
  });
  electron.app.on('activate', () {
    if (mainWindow == null) {
      onReady();
    }
  });
}

// dart $DDC_PATH/bin/dartdevc.dart --modules node -o main.dart.js main.dart && npm run-script pubserve
