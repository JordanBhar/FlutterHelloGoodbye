import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Week 4 Exercise 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var state = "Hello World";

  void Greeting() {
    setState(() {

      if (state == "Hello World") {
        state = "Goodbye World";
      }
      else if (state == "Goodbye World"){
        state = "Hello World";
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xDDC5EDFC),

      appBar: AppBar(

        backgroundColor: Colors.lightBlue ,
        title: Text(widget.title),

      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              state,
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: RaisedButton(
                onPressed: Greeting, child: Text('Press') , color: Colors.lightBlue,
              ),
            )
          ] ,
        ),
      ),



    );
  }
}




