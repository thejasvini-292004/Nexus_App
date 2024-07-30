import 'package:flutter/material.dart';
import 'package:my_first_app/app/constants/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const MyAppBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.greenColor,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {

          scaffoldKey.currentState?.openEndDrawer();
        },
      ),
      title: Center(
        child: Image.asset(
          'assets/images/nexus_logo.png',
          height: 45, // Adjust the height as needed
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            // Notification icon action
          },
        ),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}

