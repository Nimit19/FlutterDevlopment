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
      home: const MyHomePage(title: 'ContainerDeco'),
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
      body: Container(
        color: Colors.blue.shade50,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blue,

              // // 1]
              // borderRadius: BorderRadius.circular(11),

              // // 2]
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10)),

              // // 3]
              borderRadius: BorderRadius.all(Radius.elliptical(10, 25)),

              border: Border.all(
                width: 2,
                color: Colors.blue.shade700,
              ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade300,
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
            ),
          ),
        ),
      )
    );
  }
}
