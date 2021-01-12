import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Semantics(
          hidden: true,
          excludeSemantics: true,
          child: Text("Aplikasi Aksesibilitas"),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.plus_one),
      //   onPressed: () {
      //     setState(() {
      //       number++;
      //     });
      //   },
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Semantics(
              label:
                  "Ini adalah bilangan yang akan ditambahkan dan dikurangkan. Bilangan saat ini adalah",
              child: Text(
                number.toString(),
                style: TextStyle(fontSize: 60),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  child: Semantics(
                    onTapHint: "menambahkan bilangan dengan satu",
                    child: Icon(Icons.add),
                  ),
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  child: Center(
                    child: Semantics(
                      onTapHint: "Mengurangkan bilangan dengan satu",
                      child: Icon(Icons.minimize),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      number--;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
