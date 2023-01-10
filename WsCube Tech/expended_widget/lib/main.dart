import 'package:expended_widget/UI_Helper/textStyle.dart';
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
          textTheme: const TextTheme(
            subtitle1: TextStyle(
                fontSize: 40,
                fontFamily: 'Main Font',
                fontWeight: FontWeight.w500,
                color: Colors.red
            ),
            headline1: TextStyle(
              fontSize: 30,
              fontFamily: 'Main Font',
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),
            headline2: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          )),
      home: const MyHomePage(title: 'ExpendedWidget, CustomFonts and Theme'),
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
        title: Text(widget.title)
      ),
      body: Container(
        color: Colors.blue.shade50,
        child: Column(
          children: [
            Row(
              // Check for a Column
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.blue,
                    width: 50,
                    height: 100,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.red,
                    width: 50,
                    height: 100,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                    width: 50,
                    height: 100,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.orange,
                    width: 50,
                    height: 100,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              color: Colors.blue.shade200,
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(10),
                // padding: const EdgeInsets.only(top: 10,left: 10),
                child: Text(
                  "Nimit Patel",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue.shade900),
                ),
              ),
            ),
            Text("Nimit Miteshkumar Patel",
                style: Theme.of(context).textTheme.subtitle1),
            Text("Nimit Miteshkumar Patel",
                style: Theme.of(context).textTheme.headline1),
            Text("Nimit Miteshkumar Patel",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.green)),
            Text("Nimit Miteshkumar Patel", style: textStyle1()),
            Text("Nimit Miteshkumar Patel", style: textStyle2()),
            Text("Nimit Miteshkumar Patel",
                style: textStyle2(
                    textColor: Colors.green.shade800,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic)),
            Card(
              elevation: 5,
              shadowColor: Colors.blue.shade900,
              color: Colors.blue.shade100,
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Nimit Miteshkumar Patel",
                    style: Theme.of(context).textTheme.subtitle1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
