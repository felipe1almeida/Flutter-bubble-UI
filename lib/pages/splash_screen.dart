import 'package:flutter/material.dart';
import 'package:flutter_bubble/pages/onboarding.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then(
      (value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Onboarding(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffDF8EC8),
              Color(0xffB0ABEE),
            ],
          ),
        ),
        child: Center(
          child: Container(
            width: double.infinity,
            child: Stack(
              children: [
                Center(
                  child: Text(
                    'bubble',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 51,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 400,
                  right: 100,
                  child: SvgPicture.asset(
                    'assets/images/two circles.svg',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
