import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_first_app/app/components/announcement.dart';
import 'package:my_first_app/app/components/appBar.dart';
import 'package:my_first_app/app/components/drawer.dart';
import 'package:my_first_app/app/constants/colors.dart';

import '../controllers/announcements_controller.dart';

class AnnouncementsView extends GetView<AnnouncementsController> {
  AnnouncementsView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(scaffoldKey: _scaffoldKey,),
      drawer: MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Announcements:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: FirestoreListView(query: FirebaseFirestore.instance.collection('announcements'), itemBuilder: (context, snap){
              final data = snap.data();
              return Announcement(title: data['title'],content: data['content'],createdDate: data['createdDate'].toDate(),);
            }),
          )
        ],
      ),
    );
  }
}
