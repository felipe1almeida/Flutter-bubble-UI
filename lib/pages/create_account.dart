import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 76),
            SvgPicture.asset('assets/images/two circles.svg'),
            SizedBox(height: 35),
            Text(
              'Crie sua conta',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 11),
            Text(
              'Faça seu cadastro para continuar',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 37),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xff9B97EB),
                  ),
                ),
                labelText: 'Nome completo',
              ),
            ),
            SizedBox(height: 27),
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
            SizedBox(height: 27),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xff9B97EB),
                  ),
                ),
                labelText: 'Senha',
              ),
            ),
            SizedBox(height: 27),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xff9B97EB),
                  ),
                ),
                labelText: 'Confirmar senha',
              ),
            ),
            SizedBox(height: 41),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) => {},
                ),
                Text(
                  'Eu concordo com os',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Termos de Uso',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff605DAB),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 31),
            SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton(
                child: Text(
                  'Cadastrar',
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
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Já possui uma conta?',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff605DAB),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
