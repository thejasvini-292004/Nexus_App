import 'package:get/get.dart';

import '../modules/announcements/bindings/announcements_binding.dart';
import '../modules/announcements/views/announcements_view.dart';
import '../modules/categories/bindings/categories_binding.dart';
import '../modules/categories/views/categories_view.dart';
import '../modules/club_info/bindings/club_info_binding.dart';
import '../modules/club_info/views/club_info_view.dart';
import '../modules/event_calender/bindings/event_calender_binding.dart';
import '../modules/event_calender/views/event_calender_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/phone_login/bindings/phone_login_binding.dart';
import '../modules/phone_login/views/phone_login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.EVENT_CALENDER;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_LOGIN,
      page: () => const PhoneLoginView(),
      binding: PhoneLoginBinding(),
    ),
    GetPage(
      name: _Paths.ANNOUNCEMENTS,
      page: () => AnnouncementsView(),
      binding: AnnouncementsBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_CALENDER,
      page: () => EventCalenderView(),
      binding: EventCalenderBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORIES,
      page: () => CategoriesView(),
      binding: CategoriesBinding(),
    ),
    GetPage(
      name: _Paths.CLUB_INFO,
      page: () => ClubInfoView(),
      binding: ClubInfoBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
