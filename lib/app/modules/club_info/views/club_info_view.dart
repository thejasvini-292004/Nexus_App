import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/appBar.dart';
import '../../../components/drawer.dart';
import '../../../constants/colors.dart';
import '../controllers/club_info_controller.dart';

class ClubInfoView extends GetView<ClubInfoController> {
  ClubInfoView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(scaffoldKey: _scaffoldKey),
      drawer: MyDrawer(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Google Developer Student Club Logo
            Image(image: NetworkImage('data:image/png;base64,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'),
              width:60,
              height: 60,),

            SizedBox(height: 10),
            // Google Developer Student Club Text
            Text(
              'Google Developer Student Club',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBlueColor,
              ),
            ),
            SizedBox(height: 10),
            // Instagram handle
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.camera_alt, // or use a custom icon if available
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  'gdsc_dypcoe',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.darkBlueColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Description text
            Text(
              'Empowering tech enthusiasts at\nDYP COE\nFostering innovation & learning\nJoin us to explore, create, and code the future!',
              textAlign: TextAlign.center,
              style: GoogleFonts.josefinSans(
                fontSize: 17,
                color: AppColors.darkBlueColor,
              ),

            ),
          ],


      // Add some top padding
          Center(
            child: Column(
              children: [
                // Tabs Row
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TabButton(title: 'Club Members'),
                      TabButton(title: 'Announcements'),
                      TabButton(title: 'Recruitments'),
                    ],
                  ),
                ),
                // Horizontal ListView
                Container(
                  height: 200, // Adjust as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3, // Number of items
                    itemBuilder: (context, index) {
                      // Replace with actual content widgets
                      return Container(
                        width: 150, // Width of each item
                        margin: EdgeInsets.all(10),
                        color: Colors.grey[300], // Background color
                        child: Center(
                          child: Text(
                            index == 0
                                ? 'Club Members'
                                : index == 1
                                ? 'Announcements'
                                : 'Recruitments',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

      ]
      ),


    );



  }
}
class TabButton extends StatelessWidget {
  final String title;

  TabButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          title,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }}
