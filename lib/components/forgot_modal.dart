import 'package:flutter/material.dart';
import 'package:minha_agenda/components/custom_button.dart';
import 'package:minha_agenda/components/custom_input.dart';

dynamic showForgotModal(BuildContext contextParent) {
  final emailController = TextEditingController();

  return showModalBottomSheet(
    isScrollControlled: true,
    useRootNavigator: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
      ),
    ),
    context: contextParent,
    builder: (BuildContext context) {
      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 4.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(height: 16.0),
                Text('Esqueci a senha', style: TextStyle(color: Colors.grey[700], fontSize: 26.0, fontWeight: FontWeight.w600)),
                const SizedBox(height: 20.0),
                Text(
                  'Informe abaixo seu CPF utilizado em seu cadastro para recuperar a senha.',
                  style: TextStyle(color: Colors.grey[700], fontSize: 14.0),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30.0),
                CustomInput(controller: emailController, hintText: 'E-Mail'),
                const SizedBox(height: 30.0),
                CustomButton(onTap: (){}, text: 'Enviar',)
              ],
            ),
          ),
        ),
      );
    },
  );
}