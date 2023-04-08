import 'package:flutter/material.dart';
import 'package:minha_agenda/components/custom_button.dart';
import 'package:minha_agenda/components/custom_input.dart';
import 'package:minha_agenda/components/forgot_modal.dart';
import 'package:minha_agenda/components/square_tile.dart';
import 'package:minha_agenda/pages/home.dart';
import 'package:minha_agenda/pages/register.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUser(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 30.0),
          const Icon(Icons.lock, size: 100.0),
          const SizedBox(height: 30.0),
          Text('Seja Bem-Vindo',
              style: TextStyle(color: Colors.grey[700], fontSize: 16.0)),
          const SizedBox(height: 25.0),
          CustomInput(controller: emailController, hintText: 'E-Mail'),
          const SizedBox(height: 10.0),
          CustomInput(
              controller: passwordController,
              hintText: 'Senha',
              obscureText: true),
          const SizedBox(height: 10.0),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                GestureDetector(
                    onTap: () => showForgotModal(context),
                    child: Text('Esqueceu a senha ?',
                        style: TextStyle(color: Colors.grey[600])))
              ])),
          const SizedBox(height: 30.0),
          CustomButton(onTap: () => signUser(context)),
          const SizedBox(height: 30.0),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[400])),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Ou continue com',
                          style: TextStyle(color: Colors.grey[700]))),
                  Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[400])),
                ],
              )),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [SquareTile(path: 'lib/images/google.png')],
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Não possui conta?',
                  style: TextStyle(color: Colors.grey[700])),
              const SizedBox(width: 4),
              GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage())),
                  child: const Text('Cadastre agora',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)))
            ],
          ),
        ],
      )),
    );
  }
}
