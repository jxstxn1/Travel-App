import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import '../models/categories.dart';

class CategoriesItem extends StatelessWidget {
  final Categories categories;

  const CategoriesItem({Key? key, required this.categories}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: size.height * .07,
              width: size.width * .15,
              padding: EdgeInsets.all(kDefaultPadding / 1.5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.175),
                borderRadius: BorderRadius.all(Radius.circular(15.0),),
              ),
              child: Center(
                child: SvgPicture.asset(categories.asset, ),
              ),
            ),
            SizedBox(
              height: size.height * .0115,
            ),
            Text(
              categories.name,
              style: GoogleFonts.lato(fontSize: size.height * .015),
            ),
          ],
        ),
        SizedBox(width: size.width * .1,)
      ],
    );
  }
}
