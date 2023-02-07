import 'package:get/get.dart';

class AuthController extends GetxController {
  withoutAuth() {
    Get.offNamed("/feed");
  }
}
