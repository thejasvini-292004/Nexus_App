import 'package:flutter/material.dart';
import 'package:my_first_app/app/constants/colors.dart';

import 'custom_list_tile.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.greenColor,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: Image.asset('assets/images/nexus_logo.png'),
                  ),
                ],
              ),
            ),
          ),
          CustomListTile(
            icon: Icons.home,
            text: 'Home',
            onTap: () {
              // Handle Home tap
              Navigator.pop(context);
            },
          ),
          CustomListTile(
            icon: Icons.person,
            text: 'Profile',
            onTap: () {
              // Handle Profile tap
              Navigator.pop(context);
            },
          ),
          CustomListTile(
            icon: Icons.calendar_today,
            text: 'Event Calendar',
            onTap: () {
              // Handle Event Calendar tap
              Navigator.pop(context);
            },
          ),
          CustomListTile(
            icon: Icons.business_center,
            text: 'Recruitments',
            onTap: () {
              // Handle Recruitments tap
              Navigator.pop(context);
            },
          ),
          CustomListTile(
            icon: Icons.category,
            text: 'Category',
            onTap: () {
              // Handle Category tap
              Navigator.pop(context);
            },
          ),
          CustomListTile(
            icon: Icons.settings,
            text: 'Settings',
            onTap: () {
              // Handle Settings tap
              Navigator.pop(context);
            },
          ),
          CustomListTile(
            icon: Icons.help,
            text: 'Help',
            onTap: () {
              // Handle Help tap
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
