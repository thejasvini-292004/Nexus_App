import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_first_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
 RxBool isLoading = false.obs;
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

  Future <void> authenticate(String phoneNumber)
  async{
    isLoading.value = true;

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {

          isLoading.value = false;
      Get.defaultDialog(title: 'Error', content: Text(e.message??''));

      },
      codeSent: (String verificationId, int? resendToken) async{
       
        await FirebaseAuth.instance.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId, smsCode: '123456')).then((v)=>Get.toNamed(Routes.ANNOUNCEMENTS));
        
      },
      timeout: Duration(seconds: 10),
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
    
   
  }


}
