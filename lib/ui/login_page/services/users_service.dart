class UsersServiceImpl extends UsersService {
  @override
  Future<List<String>> getUsers() {
    return Future.value(['Gevorg', 'Sona', 'Nshan', 'Vardan', 'Angela']);
  }
}

abstract class UsersService {
  Future<List<String>> getUsers();
}
