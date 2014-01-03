import 'dart:html';

void main() {
  var element = querySelector('ul');

  element.on['build'].listen((e) {
    window.alert('build event detected');
  });

  var customEvent = new CustomEvent('build');
  element.onClick.listen((e) {
    element.dispatchEvent(customEvent);
  });
}