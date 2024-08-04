import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {

    super.onInit();
  }

  @override
  void onReady() {
    signIn();

    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void>signIn()async{
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      try {
        await FirebaseAuth.instance.signInAnonymously();
      }
      catch(e){
        return;
      }

      // User is signed in

    }
    Get.offAllNamed(Routes.ANNOUNCEMENTS);

  }
}
