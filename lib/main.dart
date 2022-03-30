/*import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Center(child: const MyHomePage(title: 'Currency convertor'))

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        //Image.network("https://static.playtech.ro/unsafe/970x500/smart/filters:contrast(5):format(jpeg):quality(90)/https://www.stiridinlume.ro/wp-content/uploads/2021/08/Cine-sunt-personalitatile-romanesti-care-se-afla-pe-bancnote-si-cum-se-aleg-ele-de-fapt.jpg"),
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          //Image.network("https://static.playtech.ro/unsafe/970x500/smart/filters:contrast(5):format(jpeg):quality(90)/https://www.stiridinlume.ro/wp-content/uploads/2021/08/Cine-sunt-personalitatile-romanesti-care-se-afla-pe-bancnote-si-cum-se-aleg-ele-de-fapt.jpg"),
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:homework1_flutter_course/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}



class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget appBarTitle = Text("Currency convertor");
  double convertedValue = 1.0;
  double euro = 4.95;
  double? result = 1.0;
  final moneyController = TextEditingController();

  void _convertMoney() {
    setState(() {
      convertedValue = double.parse(moneyController.text);
      convertedValue *= euro;
      //convertedValue=TextInputType.text as double;
      result = convertedValue! * euro!;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: appBarTitle),
        body: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.stiridinlume.ro/wp-content/uploads/2021/08/Bancnota-de-100-de-lei-este-cea-mai-falsificata-bancnota-romaneasca.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              height: 225,
              width: 900,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextFormField(
                controller: moneyController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter the amount in EUR:",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            MaterialButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('CONVERT!'),
                onPressed: () {
                  setState(
                    () {
                      convertedValue = double.parse(moneyController.text);
                      //convertedValue*=euro;
                      //convertedValue=TextInputType.text as double;
                      result = convertedValue! * euro!;

                      //print('The sum in lei is - ${convertedValue}');
                      //convertedValue=TextInputType.text as double;
                    },
                  );
                }
                //,
                //child: new Text('The sum in lei is - ${_convertedValue}'),
                //),
                ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'The sum in lei is: ${result}',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
