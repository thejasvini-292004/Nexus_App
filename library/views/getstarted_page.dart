import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/constants/colors.dart';
import 'package:my_first_app/constants/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:my_first_app/app/constants/colors.dart';

import '../constants/colors.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final  width = MediaQuery.of(context).size.width;
    final  height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.greenColor ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset('assets/images/app_logo.png',
                height: height*0.3,
              ),
              Text('Uniting Clubs , Connecting Students ... ',
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(
                    fontSize: 16,
                    color: Color(0xff1B134F)
                ),
              ),
            ],
          )),


          Padding(
            padding: const EdgeInsets.only(bottom:10),
            child: Row(

              children: [
                Expanded(

                    child: SizedBox()),
                Expanded(
                  flex: 3,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), // Adjust this value for more or less ellipse
                              ),
                        backgroundColor: Color(0xff1B134F),
                        fixedSize: Size(170, 80)
                      ),
                      onPressed: (){}, child:Text
                    ('Get Started',
                    style: TextStyle(color: Colors.white,
                    fontSize: 20,
                    ),
                  
                   
                  )),
                ),
                Expanded(child: SizedBox()),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10,bottom:30),
            child: Row(

              children: [
                 Expanded(child: SizedBox()),
                Expanded(
                  flex: 3,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Adjust this value for more or less ellipse
                           ),
                    backgroundColor: Color(0xff1B134F),
                    fixedSize: Size(170, 80)
                           ),
                    onPressed: (){}, child:Text('Log in',
                       style: TextStyle(color: Colors.white,
                       fontSize: 20,
                              ),)
                  ),
                ),
                Expanded(child: SizedBox()),
            ],
         ),
      ),
          Padding(
            padding:  EdgeInsets.only(bottom:height*0.1, left: 20, right: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'New around here? ',
                    style: GoogleFonts.josefinSans(
                      color: Colors.black,
                      fontSize: 22,

                    )
                  ),
                  TextSpan(
                      text: 'Sign Up',
                      style: GoogleFonts.josefinSans(
                        color: AppColors.darkBlueColor,
                        fontSize: 22,
                       fontWeight: FontWeight.bold
                      )
                  )
                ]
              )
            ),
          )


      ]
          ),
    );
  }
}
