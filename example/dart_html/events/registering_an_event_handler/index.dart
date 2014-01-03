import 'dart:html';

void main() {
  querySelector('#text').onClick.listen((event) {
    window.alert('Clicked');
  });
}