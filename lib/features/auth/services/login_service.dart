import 'package:doctor_app/models/user.dart';
import "package:http/http.dart" as http;

class LoginService {
  signInUpUser({
    required String email,
    required String password,
  }) async {
    try {
      User user = User(
          id: '',
          email: email,
          password: password,
          address: '',
          type: '',
          token: '');

      http.post(Uri.parse("http://192.168.1.2:3000/api/signup"), body: {});
    } catch (e) {}
  }
}
