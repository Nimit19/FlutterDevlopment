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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'List View'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        // scrollDirection: Axis.horizontal,
        // reverse: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Nimit",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Nick",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Devanshu",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Harsh",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Ankit",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Nimit",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Yug",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Ruchir",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Yash",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Mekvin",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Nimit",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Jay",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Kushal",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Shiv",
              style: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
