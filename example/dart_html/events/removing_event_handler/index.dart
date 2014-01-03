import 'dart:async';
import 'dart:html';

handler1(event) => window.alert('inside handler1');
handler2(event) => window.alert('inside handler2');

void main() {
  // You need access to the StreamSubscription object returned by listen().
  // Then, you can simply call its cancel() method.  The alert in the code
  // below is triggered only once.
  StreamSubscription subscription1, subscription2;
  subscription1 = querySelector('#text').onClick.listen(handler1);
  subscription2 = querySelector('#text').onClick.listen(handler2);
  subscription2.cancel();

  Element el = querySelector('text');
}