import 'package:bleckl/components/coupon_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.grey
              ),
              child: Text(
                'My Bleckl',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Column(
          children: const [

            CouponCard(color: Colors.green, text: "Bier 🍺",),
            CouponCard(color: Colors.pink, text: "Giggerle 🐔",),
            CouponCard(color: Colors.brown, text: "Spanferkl 🐷",),
            CouponCard(color: Colors.greenAccent, text: "Wosser 💧",),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
            ),
            Text("20.5 €", style: TextStyle(fontSize: 25),)
          ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}