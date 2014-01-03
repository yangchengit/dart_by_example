import 'dart:html';

void main() {
  window.onClick.listen((event) {
    window.alert('Click coordinates: ${event.offset.x}, ${event.offset.y}');
  });
}