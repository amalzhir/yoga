import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:yoga/main.dart';
import 'package:yoga/login_page.dart';


class SocialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(icon: Icon(Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          DelayedAnimation(delay: 1000, child: Container(
            height: 200,
            child: Image.asset('assets/images/yoga_3.jpeg'),
          ),
          ),
          DelayedAnimation(delay: 1000, child: Container(
            height: 200,
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
              child: Column(
                children: [
                  Text(
                      "Champs starts here",
                    style: GoogleFonts.poppins(
                      color: d_red,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Save your progress to access your personal training program!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ),
          DelayedAnimation(delay: 3500, child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 40,
            ),
            child: Column(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => loginPage(),),);
                },
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: d_red,
                      padding: EdgeInsets.all(13),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail_outline_outlined),
                        SizedBox(width: 10),
                        Text(
                            "EMAIL",
                            style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                        )
                        )
                      ],
                    ),
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => loginPage(),),);
                },
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color(0xFF576dff),
                    padding: EdgeInsets.all(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.facebook),
                      SizedBox(width: 10),
                      Text(
                          "FACEBOOK",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => loginPage(),),);
                },
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Colors.white,
                    padding: EdgeInsets.all(13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.google,
                      color: Colors.red,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "GOOGLE",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),),
    );
  }
}
