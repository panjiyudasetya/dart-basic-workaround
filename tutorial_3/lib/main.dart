import 'dart:math';
import 'dart:convert';

void main() => new FutureExample().start();

class FutureExample {
  void start() {
    register('user_1', 'Test@12345')
        .then((user) {
          print(user);
          return user;
        })
        .then((Map<String, String> user) =>
            //login(user['username'], user['password']))
            login(null, user['password']))
        .then((int token) => print('Token $token'))
        .catchError((error) {
          print(new JsonDecoder().convert(error.toString()));
        });
  }
}

Future<Map<String, String>> register(String username, String password) {
  return Future.delayed(new Duration(milliseconds: 300),
      () => {'username': username, 'password': password});
}

Future<int> login(String username, String password) {
  if (username == null ||
      username.isEmpty ||
      password == null ||
      password.isEmpty)
    throw new SerialisableException('Username or password can not be empty!');
  return Future.delayed(
      new Duration(milliseconds: 300), () => Random.secure().hashCode);
}

class SerialisableException implements Exception {
  final String message;
  const SerialisableException([this.message]);

  @override
  String toString() {
    return "{\"message\": \"$message\"}";
  }
}
