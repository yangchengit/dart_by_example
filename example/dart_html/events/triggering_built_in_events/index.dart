import 'dart:html';

void main() {
  var select = querySelector('select');
  select.onChange.listen((event) {
    window.alert('the selection changed');
  });
  select.dispatchEvent(new Event('change'));
}