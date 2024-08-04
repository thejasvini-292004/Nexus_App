import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_app/app/components/announcement.dart';
import 'package:my_first_app/app/modules/announcements/views/announcements_view.dart';
import 'package:my_first_app/app/modules/categories/views/categories_view.dart';
import 'package:my_first_app/app/modules/club_info/views/club_info_view.dart';

import 'package:my_first_app/app/modules/event_calender/views/event_calender_view.dart';
import 'package:my_first_app/app/modules/profile/views/profile_view.dart';
import 'package:my_first_app/app/modules/settings/views/settings_view.dart';
import 'package:my_first_app/views/event_calender.dart';
import 'package:my_first_app/views/profile_view.dart';
import 'package:my_first_app/views/getstarted_page.dart';
import 'package:my_first_app/views/wheather_screen.dart';
import 'package:my_first_app/views/first_page.dart';
import 'package:shake/shake.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nexus DYP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EventCalenderView() );
  }
}




