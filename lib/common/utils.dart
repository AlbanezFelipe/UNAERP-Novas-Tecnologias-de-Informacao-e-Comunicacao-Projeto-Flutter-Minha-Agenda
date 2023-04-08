import 'package:flutter/material.dart';
import 'package:minha_agenda/models/contact.dart';

import 'package:url_launcher/url_launcher.dart';

class Utils {
  Future<void> call(String tel) async {
    if (!await launchUrl(Uri(scheme: 'tel', path: tel))) {
      throw Exception('Could not launch');
    }
  }

  Future<bool> showAddContactDialog(
      BuildContext context, List<Contact> list) async {
    String name = '';
    String number = '';

    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Novo Contato'),
          content: SingleChildScrollView(
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Nome',
                    ),
                    onChanged: (value) {
                      name = value;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Número',
                    ),
                    onChanged: (value) {
                      number = value;
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (states) => Colors.grey[600],
                ),
              ),
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                if (name.isEmpty || number.isEmpty) return;
                list.add(Contact(name: name, phone: number));
                Navigator.of(context).pop(true);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (states) => Colors.grey[800],
                ),
              ),
              child: const Text('Salvar'),
            ),
          ],
        );
      },
    );
  }
}
