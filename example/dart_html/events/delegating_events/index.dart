import 'dart:html';

void main() {
  var counter = 0;
  document.body.onClick.matches('p').listen((Event event) {
  var para = new ParagraphElement()..text = 'Added dynmically ${counter++}';
    event.matchingTarget.parent.children.add(para);
  });
}
