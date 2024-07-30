import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/appBar.dart';
import '../../../components/drawer.dart';
import '../../../constants/colors.dart';
import '../controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  CategoriesView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(scaffoldKey: _scaffoldKey),
      drawer: MyDrawer(),
      body: Column(
        children: [
        Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Icon(
              Icons.category,
              color: AppColors.darkBlueColor,
              size: 35,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                'Categories: ',
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

      Scaffold(
               body: ListView.builder( itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                children: [
                  Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 5),
              child: Icon(
                Icons.group,
                color: AppColors.darkBlueColor,
                size: 40,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Club name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Club',
                    // maxLines: 2,
                    // overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'About club',
                    style: TextStyle(color: Colors.grey),
                  ),
          Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 5),
                child: Icon(
                  Icons.group,
                  color: AppColors.darkBlueColor,
                  size: 40,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'Club name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Club',
                      // maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5),
                    Text(
                      '10 min ago',
                      style: TextStyle(color: Colors.grey),
                    ),


                ],
              ),
            ),

          ],
        ),
      ),
    ]
                  )
                  )



    ],
    ),
      )
    ),
                ];
                

                },
      )


      ),
      ]

    ),
    );




  }
}
