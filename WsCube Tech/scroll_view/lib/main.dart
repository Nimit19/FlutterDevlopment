import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      home: const MyHomePage(title: 'Scroll View'),
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

  String s = "Flutter is a mobile app development platform created by Google. It allows developers to create web, desktop, and cross-platform apps that run on Android and iOS devices. Flutter uses a reactive programming language called Dart, making development faster and easier than traditional methods.";
  String y = "Flutter is a mobile app SDK (software development kit) for building high-performance, high-fidelity apps for iOS and Android. With powerful graphics and animation libraries, the Flutter framework makes it easy to build user interfaces that react smoothly in response to touch. Flutter is built on the Dart programming language and provides a fast development workflow with hot reloading, so you can quickly iterate on your code.";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.only(right: 8),
                height: 200,
                color: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 200,
                          color: Colors.green,
                          child:  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Text(s + y,style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 200,
                          color: Colors.blue,
                        ),

                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 200,
                          color: Colors.red,
                        ),

                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 200,
                          color: Colors.black,

                        ),

                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 200,
                          color: Colors.pink,

                        ),

                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 200,
                          color: Colors.orange,

                        ),
                      ],
                    ),
                  ),
                ),


              ),

              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 200,
                color: Colors.yellow,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 200,
                color: Colors.purpleAccent,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 200,
                color: Colors.blue,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 200,
                color: Colors.pink,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 200,
                color: Colors.green,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 200,
                color: Colors.orange,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 200,
                color: Colors.brown,
              ),
            ],
          ),
        ),
      ),

    );
  }
}
