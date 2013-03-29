// Auto-generated from main.html.
// DO NOT EDIT.

library main_html;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;


// Original code

    
    final __changes = new __observe.Observable();

    String __$str = '';
    String get str {
      if (__observe.observeReads) {
        __observe.notifyRead(__changes, __observe.ChangeRecord.FIELD, 'str');
      }
      return __$str;
    }
    set str(String value) {
      if (__observe.hasObservers(__changes)) {
        __observe.notifyChange(__changes, __observe.ChangeRecord.FIELD, 'str',
            __$str, value);
      }
      __$str = value;
    }
    
    void upcase() {
      str = str.toUpperCase();
    }
 
    void downcase() {
      str = str.toLowerCase();
    }
    
    main() {}
  
// Additional generated code
void init_autogenerated() {
  var _root = autogenerated.document.body;
  final __html0 = new autogenerated.BRElement(), __html1 = new autogenerated.Element.html('<input type="button" value="Click to upcase">'), __html2 = new autogenerated.Element.html('<input type="button" value="Click to downcase">');
  var __e0, __e2, __e3, __e4;
  var __t = new autogenerated.Template(_root);
  __e0 = _root.query('#__e-0');
  __t.listen(__e0.onInput, ($event) { str = __e0.value; });
  __t.oneWayBind(() => str, (e) { __e0.value = e; }, false, false);
  __e4 = _root.query('#__e-4');
  var __binding1 = __t.contentBind(() => str, false);
  __e2 = __html1.clone(true);
  __t.listen(__e2.onClick, ($event) { upcase(); });
  __e3 = __html2.clone(true);
  __t.listen(__e3.onClick, ($event) { downcase(); });
  __e4.nodes.addAll([new autogenerated.Text(' You typed: '),
      __binding1,
      new autogenerated.Text('\n      '),
      __html0.clone(true),
      new autogenerated.Text('\n      '),
      __e2,
      new autogenerated.Text('\n      '),
      __e3,
      new autogenerated.Text('\n    ')]);
  __t.create();
  __t.insert();
}

//@ sourceMappingURL=main.html.dart.map