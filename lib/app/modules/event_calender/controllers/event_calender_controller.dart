import 'package:get/get.dart';

class EventCalenderController extends GetxController {
  //TODO: Implement EventCalenderController
  RxInt selectedYear = DateTime.now().year.obs;
  RxList<int> years = List<int>.generate(DateTime.now().year-2000+1, (index) => 2000 + index).reversed.toList().obs; // List of years from 2000 to 2100

  var focusedDay = DateTime.now().obs;
  var selectedDay = DateTime.now().obs;
  RxList<Map<String, String>> reminders = [
    {'date': '2024-03-02', 'reminder': 'Doctor Appointment'},
    {'date': '2024-03-07', 'reminder': 'Project Deadline'},
    {'date': '2024-03-15', 'reminder': 'Friend\'s Birthday'},
  ].obs;
  void updateYear(int year) {
    selectedYear.value = year;
    focusedDay.value = DateTime(year, focusedDay.value.month, focusedDay.value.day);
  }


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
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
