import 'package:angular/angular.dart';

class User {
  String name;
  User(this.name);
}

@NgDirective(
  selector: '[user-controller]',
  publishAs: 'ctrl'
)
class UserController {
  List<User> users;
  User selectedUser;

  UserController() {
    users = [
      new User('Tom'),
      new User('Dick'),
      new User('Harry')
    ];
    selectedUser = users[1];
    print('selectedUser = ${selectedUser.name}');
  }
}

class MyAppModule extends Module {
  MyAppModule() {
    type(UserController);
  }
}

main() {
  ngBootstrap(module: new MyAppModule());
}