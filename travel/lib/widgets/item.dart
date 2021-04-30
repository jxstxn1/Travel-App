import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'dart:async';

import '../constants.dart';
import '../models/items.dart';
import '../widgets/bookmark.dart';

class Item extends StatefulWidget {
  final Items item;

  const Item({Key? key, required this.item}) : super(key: key);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool isShimmerEnabled = true;
  bool isShimmerDisplayed = false;

  final timeout = Duration(seconds: 2);
  final ms = Duration(milliseconds: 1);

  Timer startTimeout([int? milliseconds]) {
    var duration = milliseconds == null ? timeout : ms * milliseconds;
    return Timer(duration, handleTimeout);
  }

  @override
  void dispose() {
    startTimeout().cancel();
    super.dispose();
  }

  void handleTimeout() {
    setState(() {
      isShimmerEnabled = false;
      isShimmerDisplayed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    startTimeout();
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer(
          duration: Duration(milliseconds: 300),
          interval: Duration(milliseconds: 300),
          enabled: isShimmerEnabled,
          color: Colors.white,
          child: isShimmerEnabled
              ? Container(
                  height: size.height * .38,
                  width: size.width * .55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.5),
                    ),
                  ),
                )
              : Container(
                  height: size.height * .38,
                  width: size.width * .55,
                  decoration: BoxDecoration(
                    color: kDefaultBackgroundColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.5),
                    ),
                    image: DecorationImage(
                        image: AssetImage(widget.item.image),
                        fit: BoxFit.cover),
                  ),
                  child: TweenAnimationBuilder(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: Duration(milliseconds: 2500),
                    builder: (context, double? value, child) {
                      return ShaderMask(
                        shaderCallback: (rect) {
                          return RadialGradient(
                            radius: value != null ? value * 5 : 1 * 5,
                            colors: [
                              Colors.white,
                              Colors.white,
                              Colors.transparent,
                              Colors.transparent,
                            ],
                            stops: [0.0, 0.55, 0.6, 1.0],
                            center: FractionalOffset(0.5, .85),
                          ).createShader(rect);
                        },
                        child: child,
                      );
                    },
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
                                widget.item.title,
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: size.height * .02,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                widget.item.location,
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
                ),
        ),
        SizedBox(
          width: size.width * .08,
        ),
      ],
    );
  }
}
