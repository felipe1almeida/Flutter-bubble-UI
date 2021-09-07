import 'package:flutter/material.dart';
import 'package:flutter_bubble/pages/login.dart';
import 'package:flutter_svg/svg.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffDF8EC8),
                  Color(0xffB0ABEE),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Center(
                    child: SvgPicture.asset('assets/images/cloud.svg'),
                  ),
                  SizedBox(height: 105),
                  Text(
                    'Pense fora da bolha.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Um novo jeito de anotar e compartilhar suas ideias',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: SizedBox(
                      width: 311,
                      height: 54,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        ),
                        child: Text(
                          'Continuar',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff605DAB),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Opacity(
              opacity: 0.27,
              child: SvgPicture.asset(
                'assets/images/circle.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
