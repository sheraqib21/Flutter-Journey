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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text('Flutter Container'),
        ),
        body: Center(
          child: InkWell(
            onTap: (){
              print('Tapped');
            },
            onDoubleTap: (){
              print('double tapped');
            },
            onLongPress: (){
              print('Long pressed');
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.orangeAccent,
              child: Center(child: InkWell

                (
                  onTap: (){
                    print('Text Tapped');
                  },
                  onDoubleTap: (){
                    print('Text Double tapped');
                  },
                  onLongPress: (){
                    print('Text Long pressed');
                  },
                  child: Text('Click Here',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),))),
            ),
          ),
        )





    );
  }
}
