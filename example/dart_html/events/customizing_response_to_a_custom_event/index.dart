import 'dart:html';

addFormToContainer(Element container) {
  var form = new FormElement();
  var input = new InputElement()..placeholder = 'Enter username';
  var anchor = new AnchorElement()
      ..href = '#'
      ..text = 'cancel';

  var customEvent = new CustomEvent('cancel');
  anchor.onClick.listen((Event e) {
    e.preventDefault();
    anchor.dispatchEvent(customEvent);
  });

  form.children.addAll([input, anchor]);
  container.children.add(form);
}

void main() {
  var div1 = new DivElement();
  addFormToContainer(div1);
  div1.on['cancel'].listen((event) {
    window.alert('removing form');
    div1.querySelector('input').value = '';
  });

  var div2 = new DivElement();
  addFormToContainer(div2);
  div2.on['cancel'].listen((event) {
    window.alert('disabling form');
    div2.querySelector('input').disabled = true;
  });

  document.body.children.addAll([div1, div2]);
}