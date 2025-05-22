import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
final TextEditingController _name = TextEditingController();
final TextEditingController _surname = TextEditingController();
final TextEditingController _fullname = TextEditingController();

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Escreva seu nome')),
    body: Column(
      children: [
TextField(
  style: const TextStyle(fontSize: 25, color: Colors.blue),
  decoration: const InputDecoration(labelText: 'Digite seu nome'),
  onChanged: (String texto) {
    print('valor digitado $texto');
  },
  controller: _name,
),
TextField(
  style: const TextStyle(fontSize: 25, color: Colors.blue),
  decoration: const InputDecoration(
    labelText: 'Digite seu sobrenome',
  ),
  controller: _surname,
),
ElevatedButton(
  child: const Text('Concatenar'),
  onPressed: () {
    _fullname.text = '${_name.text} ${_surname.text}';
    setState(() {});
  },
),
TextField(
  style: const TextStyle(fontSize: 25, color: Colors.blue),
  decoration: const InputDecoration(
    labelText: 'Nome completo',
  ),
  controller: _fullname,
  readOnly: true,
),
      ],
    ),
  );
}
}