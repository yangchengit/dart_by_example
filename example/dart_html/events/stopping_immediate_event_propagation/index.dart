import 'dart:html';

void main() {
  querySelector('#outer').onClick.listen((event) {
    window.alert('Outer clicked');
  });

  querySelector('#inner').onClick.listen((event) {
    // Stops handlers on '#outer' AND on '#inner'.
    event.stopImmediatePropagation();
  });

  querySelector('#inner').onClick.listen((event) {
    // Not be triggered because of call to `stopImmediatePropagation()`.
    window.alert('Inner clicked');
  });
}