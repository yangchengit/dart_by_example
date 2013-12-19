/// Use the `list()`method to list a directory's contents.  The method recurses
/// into subdirectories if the `recursive` argument is true (default is `false`)
/// and does not follow symlinks if the `followLinks` argument is `false`
/// (default is `true`).

import 'dart:io';

void main() {
  // Get the system temp directory.
  var systemTempDir = Directory.systemTemp;

  // List all its contents, recursing into sub-directories, but not following
  // symbolic links.
  systemTempDir.list(recursive: true, followLinks: false).listen(print);
}
