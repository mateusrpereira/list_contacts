import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                Contact('R', 'Romain Hoogmoed', 'romain.hoogmoed@example.com'),
                Contact('E', 'Emilie Olsen', 'emilie.olsen@example.com'),
                Contact('T', 'Téo Lefevre', 'téo.lefevre@example.com'),
                Contact('N', 'Nicole Cruz', 'nicole.cruz@example.com'),
                Contact('R', 'Remna Cruz', 'remna.peixoto@example.com'),
                Contact('J', 'José Ortiz', 'jose.ortiz@example.com'),
                Contact(
                    'A', 'Alma Christensen', 'alma.christensen@example.com'),
                Contact('S', 'Sergio Hill', 'sergio.hill@example.com'),
                Contact('M', 'Malo Gonzalez', 'main.gonzalez@example.com'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final String startLetter;
  final String name;
  final String email;

  const Contact(this.startLetter, this.name, this.email, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(startLetter)),
      title: Text(name),
      subtitle: Text(email),
    );
  }
}
