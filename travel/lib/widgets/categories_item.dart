import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/categories.dart';

class CategoriesItem extends StatelessWidget {
  final Categories categories;

  const CategoriesItem({Key? key,required this.categories}) : super(key: key);
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
              color: Colors.red,
            ),
            SizedBox(height: size.height * .0115,),
            Text(categories.name, style: GoogleFonts.lato(fontSize: size.height * .015),),
          ],
        ),
      ],
    );
  }
}
