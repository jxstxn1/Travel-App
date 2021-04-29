import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PictureWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(
              "assets/images/profile_picture.jpg",
            ),
            radius: size.height * .0275,
          ),
          SizedBox(
            width: size.width * .04,
          ),
          RichText(
            text: TextSpan(
              text: "Hello",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w800,
                color: Colors.black,
                fontSize: size.height * .02,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ", Valentina ",
                  style: GoogleFonts.lato(fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
