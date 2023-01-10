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
      home: const MyHomePage(title: 'Row, Column and InkWell'),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2.5,
                    color: Colors.black,
                    style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow,
              ),
              height: 145,
              width: 375,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      print("You Tap on container");
                    },
                    onLongPress: (){
                      print("You LongPress on container");

                    },
                    onDoubleTap: (){
                      print("You DoubleTap on container");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft:  Radius.circular(7),
                          bottomLeft:  Radius.circular(7),
                        ),
                        color: Colors.blue,
                      ),
                      height: 175,
                      width: 100,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.s,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Colors.red,
                            height: 55,
                            width: 240,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Hello Kem choo?",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800)),
                                Text(
                                  "Welcome",
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.black,
                            ),
                            height: 25,
                            width: 25,
                            child: Center(
                                child: Text("X",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20))),
                          )
                        ],
                      ),
                      Container(
                        color: Colors.green,
                        height: 65,
                        width: 255,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              color: Colors.pink,
                              height: 35,
                              width: 100,
                              child: Row(
                                children: [
                                  Center(child: Text("255 x 1 = 255"))
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.blue,
                              height: 35,
                              width: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("D",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      )),
                                  Text("O",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      )),
                                  Text("P",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
