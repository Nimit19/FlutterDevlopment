import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ListBuilder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // var l1 = ["Nimit", ""]
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var l1 = [
    "Nimit",
    "Ruchir",
    "Mekvin",
    "Ankit",
    "Yash",
    "Harsh",
    "Devanshu",
    "Kushal",
    "Yug",
    "Maharshi",
    "Jash",
    "Zeel",
    "Jaimin",
    "Nick"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(30),
            child: Text(l1[index], style: TextStyle(fontSize: 30)),
          );
        },
        itemCount: l1.length,
      ),
    );
  }
}

// List View Builder
// body: ListView.builder(
// itemBuilder: (context, index) {
// return Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text(
// "Nimit",
// style: TextStyle(fontSize: 25),
// ),
// );
// // return Text(l1[index]),
// },
// itemCount: 205,
// ),
