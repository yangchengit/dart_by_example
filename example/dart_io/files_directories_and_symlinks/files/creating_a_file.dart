/// Use the File create() to create a file.
/// To create intermediate directories, set the `recursive` argument to
/// `true` (defaults to `false`).

import 'dart:io';

void main() {

  // Get the system temp directory.
  var systemTempDir = Directory.systemTemp;

  // Creates dir/, dir/subdir/, and dir/subdir/file.txt in the system
  // temp directory.
  new File('${systemTempDir.path}/dir/subdir/file.txt').create(recursive: true)
    // The created file is returned as a Future.
    .then((file) {
      // Do something with the file.
  });
}