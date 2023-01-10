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
      home: const MyHomePage(title: 'ListTile And CircleAvatar'),
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
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 75,
              width: 75,
              child: CircleAvatar(
                child: Column(
                   children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset('assets/images/user.png'),
                    ),
                    Text(
                      l1[index],
                      style:
                          TextStyle(fontSize: 10, color: Colors.blue.shade900),
                    )
                  ],
                ),
                backgroundColor: Colors.blue.shade100,
                // backgroundColor: Colors.transparent,
                // radius: 50,
              ),
            ),
            title: Text(
              l1[index],
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("Number"),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: l1.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 10,
            thickness: 1,
          );
        },
      ),
    );
  }
}

// leading:Container(
// height: 55,
// width: 55,
// child: CircleAvatar(
// backgroundColor: Colors.blue.shade100,
// // backgroundColor: Colors.transparent,
// backgroundImage: AssetImage('assets/images/user.png'),
// ),
// ),
