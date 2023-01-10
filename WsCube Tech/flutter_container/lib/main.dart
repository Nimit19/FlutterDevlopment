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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void pressTextButton(){
      print("You Click Text Button...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Flutter Container, Text Widget, Buttons and Image"),
      ),
      body: Container(
        color: Colors.yellow,
        width: 350,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                    child: Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.green,
                        child: Center(
                          child: Text("Nimit Patel",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                backgroundColor: Colors.yellow,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [

                      TextButton(
                          onPressed: pressTextButton,
                          child: Text("Text Button")),


                      OutlinedButton(
                          onPressed: ()=> print("You Click Outlined Button..."),
                          child: Text("Outlined Button")),


                      ElevatedButton(
                          onPressed: () {
                            print("You Click Elevated Button...");
                          },
                          onLongPress: (){
                            print("Long Press On Elevated Button...");
                          },
                          child: Text("Elevated Button"))

                    ],
                  )
                ]),
             Center(
               child: Container(
                 child: Image.asset('assets/image/N1.png'),
               ),
             )
          ],
        )
      ),
    );
  }
}
