import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/phone_login_controller.dart';

class PhoneLoginView extends GetView<PhoneLoginController> {
  const PhoneLoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhoneLoginView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PhoneLoginView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
