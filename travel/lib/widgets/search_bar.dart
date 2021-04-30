import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerLeft,
      width: size.width * .65,
      height: size.height * .065,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.175),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.grey,
              width: size.width * .065,
            ),
            SizedBox(
              width: kDefaultPadding / 1.2,
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "search",
                  hintStyle: GoogleFonts.lato(
                    fontSize: size.height * .02,
                    color: Colors.grey[600],
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
