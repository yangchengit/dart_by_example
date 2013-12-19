/// Get the type of a file system object using the `FileSystemEntity.type()`
/// method.

import 'dart:io';

void listDirectoryContent(Directory directory) {
  // List the directory contents.
  directory.list(recursive: true, followLinks: false)
    .listen((FileSystemEntity entity) {
      // Get the type of the FileSystemEntity, apply the appropiate label, and
      // print the entity path.
      FileSystemEntity.type(entity.path)
        .then((FileSystemEntityType type) {
          String label;
          switch (type) {
            case FileSystemEntityType.DIRECTORY:
              label = 'D';
              break;
            case FileSystemEntityType.FILE:
              label = 'F';
              break;
            case FileSystemEntityType.LINK:
              label = 'L';
              break;
            case FileSystemEntityType.NOT_FOUND:
              label = 'NF';
              break;
            default:
              label = 'UNKNOWN';
          }
          print('$label: ${entity.path}');
      });
    });
}

void main() {
  // Call the method defined above on the system temp directory.
  listDirectoryContent(Directory.systemTemp);
}