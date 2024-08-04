import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../components/appBar.dart';
import '../../../components/drawer.dart';
import '../../../constants/colors.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  SettingsView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(scaffoldKey: _scaffoldKey),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Icon(
                    Icons.settings,
                    color: AppColors.darkBlueColor,
                    size: 35,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      'Settings',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.josefinSans(
                        fontSize: 30,
                        color: AppColors.darkBlueColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Notifications
            ListTile(
              title: Text('Notifications', style: GoogleFonts.josefinSans(fontSize: 18)),
              trailing: Switch(
                value: controller.isNotificationEnabled.value,
                onChanged: (bool value) {
                  controller.toggleNotifications(value);
                },
              ),
            ),
            Divider(),
            // Profile
            ListTile(
              title: Text('Profile', style: GoogleFonts.josefinSans(fontSize: 18)),
              onTap: () {
                // Navigate to Profile screen
                Get.toNamed('/profile');
              },
            ),
            Divider(),
            // Change Password
            ListTile(
              title: Text('Change Password', style: GoogleFonts.josefinSans(fontSize: 18)),
              onTap: () {
                // Navigate to Change Password screen
                Get.toNamed('/change_password');
              },
            ),
            Divider(),
            // Logout
            ListTile(
              title: Text('Logout', style: GoogleFonts.josefinSans(fontSize: 18)),
              onTap: () {
                // Perform logout action
                controller.logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
