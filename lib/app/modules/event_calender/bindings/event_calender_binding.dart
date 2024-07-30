import 'package:get/get.dart';

import '../controllers/event_calender_controller.dart';

class EventCalenderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventCalenderController>(
      () => EventCalenderController(),
    );
  }
}
