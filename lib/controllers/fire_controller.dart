import 'package:get/get.dart';

class FireController extends GetxController {
  final color = 0.obs;

  void changeBackGround(value) {
    color.value = value;
  }
  getColor() {
    return color;
  }
}
