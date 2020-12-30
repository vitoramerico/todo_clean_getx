import 'package:get/get.dart';

import 'custom_connect_interface.dart';

class CustomConnect extends GetConnect implements ICustomConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://192.168.1.220:5000';
    httpClient.timeout = const Duration(seconds: 3);
  }

  @override
  GetConnect get instance => this;
}
