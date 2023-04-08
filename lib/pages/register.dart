import 'package:flutter/material.dart';
import 'package:minha_agenda/components/custom_button.dart';
import 'package:minha_agenda/components/custom_input.dart';
import 'package:minha_agenda/components/square_tile.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final userController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void registerUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 30.0),
          const Icon(Icons.person, size: 100.0),
          const SizedBox(height: 30.0),
          Text('Cadastro de um novo usuário',
              style: TextStyle(color: Colors.grey[700], fontSize: 16.0)),
          const SizedBox(height: 25.0),
          CustomInput(controller: userController, hintText: 'Nome'),
          const SizedBox(height: 10.0),
          CustomInput(controller: emailController, hintText: 'E-Mail'),
          const SizedBox(height: 10.0),
          CustomInput(
              controller: passwordController,
              hintText: 'Senha',
              obscureText: true),
          const SizedBox(height: 30.0),
          CustomButton(onTap: registerUser),
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
          )
        ],
      )),
    );
  }
}
