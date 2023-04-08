import 'package:flutter/material.dart';
import 'package:minha_agenda/common/utils.dart';
import 'package:minha_agenda/pages/about.dart';
import 'package:minha_agenda/pages/contact.dart';
import 'package:minha_agenda/pages/note.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<Map<String, dynamic>> screens = [
    {'name': 'Contatos', 'icon': Icons.people, 'screen': ContactsList()},
    {'name': 'Telefone', 'icon': Icons.call, 'screen': null},
    {'name': 'Anotações', 'icon': Icons.menu_book, 'screen': NotesList()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0)),
            color: Colors.grey[600],
          ),
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                size: 32,
                color: Colors.grey[300],
              ),
              InkWell(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutScreen()),
                      ),
                  child: Icon(
                    Icons.question_mark,
                    size: 32,
                    color: Colors.grey[300],
                  )),
            ],
          ),
        ),
        body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 70.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Bem-Vindo(a) Felipe,',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 10.0),
              Text(
                  'aqui você têm acesso as principais funcionalidades do aplicativo',
                  style: TextStyle(color: Colors.grey[700], fontSize: 18.0)),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200.0,
                                childAspectRatio: 1.0,
                                crossAxisSpacing: 20.0,
                                mainAxisSpacing: 20.0),
                        itemCount: 3,
                        itemBuilder: (_, index) => InkWell(
                              onTap: () => screens[index]['screen'] == null
                                  ? Utils().call('')
                                  : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              screens[index]['screen']),
                                    ),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                height: 177.0,
                                width: 160.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.grey.shade400),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(screens[index]['icon'], size: 42.0),
                                      const SizedBox(height: 10.0),
                                      Text(screens[index]['name'],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.0))
                                    ]),
                              ),
                            )),
                  ],
                ),
              )),
            ])));
  }
}
