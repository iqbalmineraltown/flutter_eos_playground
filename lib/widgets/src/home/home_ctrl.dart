import 'package:get/state_manager.dart';

class HomeCtrl extends GetxController {
  var count = 0.obs;
  increment() => count++;
}
