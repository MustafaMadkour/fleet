import 'package:fleet/api_links.dart';
import 'package:fleet/core/class/crud.dart';

class RegisterData {
  Crud crud;
  RegisterData(this.crud);

  postData(String username, String email, String password) async {
    var response = await crud.postData(ApiLinks.register, {
      "username": username,
      "password": password,
      "email": email
    });
    return response.fold((l) => l, (r) => r);
  }
}
