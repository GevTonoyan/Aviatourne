import 'package:aviatourne/ui/login_page/services/users_service.dart';
import 'package:flutter/cupertino.dart';

class LoginViewModel extends ChangeNotifier {
  final UsersService _usersService;

  LoginViewModel({UsersService? usersService})
      : _usersService = usersService ?? UsersServiceImpl() {
    _getUsers();
  }

  var _users = <String>[];

  List<String> get users => _users;

  var _userNameText = 'login';

  String get userNameText => _userNameText;

  set userNameText(String newValue) {
    _userNameText = newValue;
    notifyListeners();
  }

  bool _isPasswordHasFocus = false;

  bool get isPasswordHasFocus => _isPasswordHasFocus;

  set isPasswordHasFocus(bool value) {
    _isPasswordHasFocus = value;
    notifyListeners();
  }

  Future<void> _getUsers() async {
    try {
      _users = await _usersService.getUsers();
    } catch (error) {
      print(error);
    } finally {
      notifyListeners();
    }
  }

  Future<void> validateUser(String password) {
    return Future.value();
  }
}
