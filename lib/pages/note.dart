import 'package:flutter/material.dart';

class NotesList extends StatefulWidget {
  const NotesList({Key? key}) : super(key: key);

  @override
  State<NotesList> createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  final _textEditingController = TextEditingController();

  List<String> notes = [];

  void _addNote() {
    setState(() {
      notes.add(_textEditingController.text);
      _textEditingController.clear();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Nota adicionada com sucesso!')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Anotações'),
        backgroundColor: Colors.grey[700],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(notes[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Nova anotação',
                    ),
                    onSubmitted: (_) => _addNote(),
                  ),
                ),
                const SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: _addNote,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) => Colors.grey[700],
                    ),
                  ),
                  child: const Text('Adicionar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
