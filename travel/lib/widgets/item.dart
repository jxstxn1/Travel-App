import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../models/items.dart';
import '../widgets/bookmark.dart';

class Item extends StatelessWidget {
  final Items item;

  const Item({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * .38,
          width: size.width * .55,
          decoration: BoxDecoration(
            color: kDefaultBackgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(22.5),
            ),
            image: DecorationImage(
                image: AssetImage(item.image), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [bookMark(size)],
              ),
              Spacer(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(
                  kDefaultPadding,
                  0,
                  kDefaultPadding,
                  kDefaultPadding,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.title,
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: size.height * .02,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      item.location,
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: size.height * .0175,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width * .08,
        ),
      ],
    );
  }
}