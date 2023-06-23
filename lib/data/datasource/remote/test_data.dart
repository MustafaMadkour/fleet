import 'package:fleet/api_links.dart';
import 'package:fleet/core/class/crud.dart';

class TestData {
  Crud crud;
  TestData(this.crud);

  getData() async {
    var response = await crud.postData(ApiLinks.test, {});
    return response.fold((l) => l, (r) => r);
  }
}
