import 'dart:html';

class Person {
  String name;
  Person(this.name);
}

void main() {
  window.on['foo'].listen((e) {
    window.alert('${e.detail.name}');
  });

  var event = new CustomEvent('foo', detail: new Person('Juan'));
  document.body.dispatchEvent(event);
}