import 'package:flutter/material.dart';

import 'package:minha_agenda/common/utils.dart';

import 'package:minha_agenda/models/contact.dart';

class ContactsList extends StatefulWidget {
  const ContactsList({super.key});

  @override
  State<ContactsList> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  List<Contact> contacts = [
    Contact(name: 'João', phone: '99999-1111'),
    Contact(name: 'Maria', phone: '99999-2222'),
    Contact(name: 'Pedro', phone: '99999-3333'),
    Contact(name: 'Ana', phone: '99999-4444'),
    Contact(name: 'José', phone: '99999-5555'),
    Contact(name: 'Márcia', phone: '99999-6666'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Lista de Contatos'),
        backgroundColor: Colors.grey[700],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            if(await Utils().showAddContactDialog(context, contacts)) setState(() {});
          },
          backgroundColor: Colors.grey[700],
          child: const Icon(Icons.add)),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () => Utils().call(contacts[index].phone),
            leading: CircleAvatar(
              backgroundColor: Colors.grey[700],
              child: Text(contacts[index].name[0],
                  style: const TextStyle(color: Colors.white)),
            ),
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].phone),
          );
        },
      ),
    );
  }
}
