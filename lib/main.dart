import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Заметки',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Note> _notes = [];

  void _addNote() {
    setState(() {
      _notes.add(Note());
    });
  }

  void _removeNote(int index) {
    setState(() {
      _notes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заметки'),
      ),
      body: ListView.builder(
        itemCount: _notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            key: Key(_notes[index].hashCode.toString()),
            title: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Введите заметку',
              ),
              controller: _notes[index].controller,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  value: _notes[index].isChecked ?? false,
                  onChanged: (value) {
                    setState(() {
                      _notes[index].isChecked = value;
                    });
                  },
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    _removeNote(index);
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNote,
        tooltip: 'Добавить заметку',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Note {
  final TextEditingController controller = TextEditingController();
  bool? isChecked;
}