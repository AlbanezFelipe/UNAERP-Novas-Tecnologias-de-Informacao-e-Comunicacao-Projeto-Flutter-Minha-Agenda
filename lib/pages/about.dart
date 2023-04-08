import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Minha Agenda'),
        backgroundColor: Colors.grey[700],
      ),
      body: SingleChildScrollView(child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              CircleAvatar(radius: 42.0, backgroundImage: Image.asset('lib/images/foto.jpg').image),
              const SizedBox(height: 20),
              const Text(
                'Sobre minha agenda',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              const Text(
                'Aplicativo desenvolvido com o foco no gerenciamento de contatos de telefone e anotações de texto, pensando em uma agenda virtual de uso fácil e acessível.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'O objetivo do projeto é a oportunidade do usuário ter a centralização de seus contatos e textos em um ambiente de nuvem confiável (firebase). Possibilitando o acesso e sincronização aos dados por meio de multíplos dispositivos de maneira simples e segura.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'Com Minha Agenda, basta cadastrar uma conta, e ter acesso a criação de contatos, com a opção de facilmente fazer chamadas para cada respectivo contato ou abrir o teclado de telefone para ligar diretamente a um número. Caso o usuário troque de dispositivo, todas as informações anteriores ainda estarão disponíveis, pois os dados são salvos em nuvem e associados com a conta de perfil e não ao telefone físico, dessa maneira também é possível utilizar vários dispositivos simultâneamente. Minha Agenda também oferece a funcionalidade de salvar e gerenciar anotações de texto, seguindo a mesma dinâmica de manter a informação salva em nuvem.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Feito por: Felipe Albanez Contin - 833875',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      )),
    );
  }
}
