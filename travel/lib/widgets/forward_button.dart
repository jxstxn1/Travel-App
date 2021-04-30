import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../screens/home_screen.dart';

class ForwardButton extends StatefulWidget {
  @override
  _ForwardButtonState createState() => _ForwardButtonState();
}

class _ForwardButtonState extends State<ForwardButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1750));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 5.0, end: 12.5).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
              pageBuilder: (context, animation, _) {
                return HomeScreen(streamController.stream);
              },
              opaque: false),
        );
      },
      child: Container(
        height: size.height * .066,
        width: size.height * .066,
        decoration: BoxDecoration(
          color: kDefaultBackgroundColor.withOpacity(.96),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              spreadRadius: _animation.value,
              color: kDefaultBackgroundColor.withOpacity(.13),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          child: SvgPicture.asset(
            "assets/icons/angle-right-b.svg",
            color: Colors.black.withOpacity(.66),
            // width: size.width * .,
          ),
        ),
      ),
    );
  }
}
