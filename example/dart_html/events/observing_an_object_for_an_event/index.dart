// INCOMPLETE.

class ET {
  Map listenersMap = {};

  addListener(event, listener) {
    if (!listenersMap.containsKey(event)){
      listenersMap[event] = [];
    }
    listenersMap[event].add(listener);
  }

  removeListener(type, listener){
    if (listenersMap.containsKey(type)){
      List listeners = this.listenersMap[type];
      listeners.removeWhere((l) => l == listener);
    }
  }

  fire(event) {
    var listeners = listenersMap[event];
    for (var listener in listeners) {
      // COMPLETE THIS.
    }
  }
}

void main() {
  var et = new ET();
}