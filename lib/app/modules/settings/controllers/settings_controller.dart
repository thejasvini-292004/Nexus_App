import 'package:get/get.dart';

class SettingsController extends GetxController {
  //TODO: Implement SettingsController
  var isNotificationEnabled = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

  }
  void toggleNotifications(bool value) {
    isNotificationEnabled.value = value;
    // Add additional logic to handle enabling/disabling notifications
  }

  void logout() {
    // Add logout logic here

    Get.offAllNamed('/login');
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
