import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bubble/pages/create_account.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 80,
                  child: Opacity(
                    opacity: 0.27,
                    child: SvgPicture.asset('assets/images/Ellipse 1.svg'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 98),
                            SvgPicture.asset(
                              'assets/images/two circles.svg',
                              color: Colors.white,
                            ),
                            SizedBox(height: 24),
                            Row(
                              children: [
                                Text(
                                  'Bem-vindo ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 36,
                                    color: Colors.white,
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/image 296.svg',
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Faça login para acessar sua conta',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 49),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 285.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 60,
                            ),
                            child: Column(
                              children: [
                                TextField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xff9B97EB),
                                      ),
                                    ),
                                    labelText: 'E-mail',
                                  ),
                                ),
                                SizedBox(height: 30),
                                TextField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xff9B97EB),
                                      ),
                                    ),
                                    labelText: 'Senha',
                                    suffixIcon: Icon(Icons.visibility),
                                  ),
                                  obscureText: true,
                                ),
                                SizedBox(height: 13),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Esqueceu sua senha?',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xffDF8EC8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 26),
                                SizedBox(
                                  width: double.infinity,
                                  height: 54,
                                  child: ElevatedButton(
                                    child: Text(
                                      'Fazer login',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Color(0xff605DAB)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: double.infinity,
                                  height: 54,
                                  child: ElevatedButton(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset('assets/images/Vector.svg'),
                                        SizedBox(width: 16),
                                        Text(
                                          'Continuar com o Google',
                                          style: TextStyle(
                                            color: Color(0xff8E8E93),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Color(0xffF2F2F7)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: double.infinity,
                                  height: 54,
                                  child: ElevatedButton(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset('assets/images/Vector (1).svg'),
                                        SizedBox(width: 16),
                                        Text(
                                          'Continuar com o Facebook',
                                          style: TextStyle(
                                            color: Color(0xff8E8E93),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Color(0xffF2F2F7)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 33),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Não possui uma conta?'),
                                    TextButton(
                                      onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CreateAccount(),
                                        ),
                                      ),
                                      child: Text(
                                        'Cadastre-se!',
                                        style: TextStyle(
                                          color: Color(
                                            0xff605DAB,
                                          ),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
