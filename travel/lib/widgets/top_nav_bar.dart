import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../constants.dart';

class TopNavigationBar extends StatefulWidget {
  @override
  _TopNavigationBarState createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  Size size = Size.zero;
  // List<_Categories> _categories = [
  //   _Categories('Adventure', true),
  //   _Categories('New', false),
  //   _Categories('Trending', false),
  //   _Categories('Culture', false),
  // ];

  // void _tapHandler(int index) {
  //   _categories.forEach((element) {
  //     element.selected = false;
  //   });
  //   _categories[index].selected = true;
  //   setState(() {});
  // }

  // Widget textBuild(String text, bool selected, Size size, int index) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Row(
  //         children: [
  //           InkWell(
  //             onTap: () => _tapHandler(index),
  //             child: Text(
  //               text,
  //               style: GoogleFonts.lato(
  //                   color: kSecondaryColor.withOpacity(1),
  //                   fontWeight: selected ? FontWeight.bold : FontWeight.normal,
  //                   fontSize: size.height * .02),
  //             ),
  //           ),
  //           SizedBox(
  //             width: size.width * .1,
  //           ),
  //         ],
  //       ),
  //       SizedBox(
  //         height: size.height * .009,
  //       ),
  //       // selected
  //       //     ? Container(
  //       //         alignment: Alignment.centerLeft,
  //       //         width: size.width * .06,
  //       //         height: size.height * .01,
  //       //         decoration: BoxDecoration(
  //       //           borderRadius: BorderRadius.all(
  //       //             Radius.circular(15.0),
  //       //           ),
  //       //           color: kSecondaryColor.withOpacity(1),
  //       //         ),
  //       //       )
  //       //     : Container(),
  //     ],
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   Size size = MediaQuery.of(context).size;
  //   return Container(
  //     height: size.height * .1,
  //     width: double.infinity,
  //     child: SingleChildScrollView(
  //       scrollDirection: Axis.horizontal,
  //       child: Row(
  //         children: <Widget>[
  //           for (int i = 0; i < _categories.length; i++)
  //             textBuild(
  //               _categories[i].name,
  //               _categories[i].selected,
  //               size,
  //               i,
  //             ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  //
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return topNavBarTabAnimation();
  }

  Widget topNavBarTabAnimation() {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Material(
        child: TabBar(
          indicatorColor: Colors.green,
          tabs: [
            tabText(),
            tabText(),
            tabText(),
            tabText(),
          ],
          labelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: MaterialIndicator(
            height: 5,
            topLeftRadius: 0,
            topRightRadius: 0,
            bottomLeftRadius: 5,
            bottomRightRadius: 5,
            tabPosition: TabPosition.top,
          ),
        ),
      ),
    );
  }

  Widget tabText() {
    return Row(
      children: [
        Text(
          "Adventures",
          style: GoogleFonts.lato(
              color: kSecondaryColor.withOpacity(1),
              fontWeight: FontWeight.bold,
              fontSize: size.height * .02),
        ),
        SizedBox(
          width: size.width * .1,
        ),
      ],
    );
  }
}

// class _Categories {
//   final String name;
//   bool selected;

//   _Categories(this.name, this.selected);
// }
