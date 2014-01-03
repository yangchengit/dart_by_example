import 'dart:html';

void main() {
  querySelector('#outer').onClick.listen((event) {
    window.alert('Outer clicked');
  });

  querySelector('#inner').onClick.listen((event) {
    event.stopPropagation();
    window.alert('Inner clicked');
  });
}